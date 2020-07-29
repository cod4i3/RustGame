use gl;
use std;
// これはnamespace(C++で言う所の"using namespace std;")
use std::ffi::{CStr, CString};

// Program構造体
pub struct Program {
    gl: gl::Gl,
    id: gl::types::GLuint,
}

// Program構造体のトレイト（プログラムを指定したシェーダーにリンクする）
impl Program {
    // スライス(&[])はリンクするためだけに必要
    pub fn from_shaders(
        gl: &gl::Gl,
        shaders: &[Shader]
    ) -> Result<Program, String> {
        let program_id = unsafe { gl.CreateProgram() };

        for shader in shaders {
            unsafe {
                gl.AttachShader(program_id, shader.id());
            }
        }

        unsafe {
            gl.LinkProgram(program_id);
        }

        let mut success: gl::types::GLint = 1;
        unsafe {
            gl.GetProgramiv(program_id, gl::LINK_STATUS, &mut success);
        }

        // エラー処理（ここをコメントアウトするとなぜか動くので多分エラーが起きてる)
        if success == 0 {
            let mut len: gl::types::GLint = 0;
            unsafe {
                gl.GetProgramiv(
                    program_id, 
                    gl::INFO_LOG_LENGTH, 
                    &mut len);
            }

            let error = create_whitespace_cstring_with_len(len as usize);

            unsafe {
                gl.GetProgramInfoLog(
                    program_id,
                    len,
                    std::ptr::null_mut(),
                    error.as_ptr() as *mut gl::types::GLchar,
                );
            }

            return Err(error.to_string_lossy().into_owned());
        }

        for shader in shaders {
            unsafe {
                gl.DetachShader(program_id, shader.id());
            }
        }

        Ok(Program { 
            gl: gl.clone(),
            id: program_id 
        })
    }

    pub fn id(&self) -> gl::types::GLuint {
        self.id
    }

    pub fn set_used(&self) {
        unsafe {
            self.gl.UseProgram(self.id);
        }
    }
}

// プログラム削除
impl Drop for Program {
    fn drop(&mut self) {
        unsafe {
            self.gl.DeleteProgram(self.id);
        }
    }
}

// 外から用いることができるようにpub
pub struct Shader {
    gl: gl::Gl,
    id: gl::types::GLuint,
}

// Shader構造体のトレイト,大体オブジェクト指向で言う所のメソッドのようなもの
impl Shader {
    pub fn from_source(
        gl: &gl::Gl,
        source: &CStr, 
        kind: gl::types::GLenum
    ) -> Result<Shader, String> {
        // ?マークはErrを受け取った時に戻り値をErrにする役割
        // Resultを返す時に用いる
        let id = shader_from_source(
            gl,
            source, 
            kind
        )?;
        Ok(Shader { 
            gl: gl.clone(),
            id 
        })
    }

    // おそらくバーテックスシェーダーの読み込み
    pub fn from_vert_source(gl: &gl::Gl, source: &CStr) -> Result<Shader, String> {
        Shader::from_source(gl, source, gl::VERTEX_SHADER)
    }
    // おそらくフラグメントシェーダーの読み込み
    pub fn from_frag_source(gl: &gl::Gl, source: &CStr) -> Result<Shader, String> {
        Shader::from_source(
            gl, 
            source, 
            gl::FRAGMENT_SHADER
        )
    }

    pub fn id(&self) -> gl::types::GLuint {
        self.id
    }
}

// シェーダーidのクリーンアップ
impl Drop for Shader {
    fn drop(&mut self) {
        unsafe {
            self.gl.DeleteShader(self.id);
        }
    }
}

// unsafeな機能を用いるためにsafeなAPIを作成する（参考サイトの言葉を借りた）
// Rustの文字列スライス &strを C関数のglShaderSourceに処理させる
// 戻り値が成功ならGLuint型のShader id,失敗ならString型（Error Message）となる
fn shader_from_source(
    gl: &gl::Gl, // glの参照
    source: &CStr, //&strを&str::ffi::CStrに変換
    kind: gl::types::GLenum,
) -> Result<gl::types::GLuint, String> {
    // シェーダーソースの設定、コンパイル
    let id = unsafe { gl.CreateShader(kind) };
    unsafe {
        gl.ShaderSource(
            id, 
            1, 
            &source.as_ptr(), 
            std::ptr::null());
        gl.CompileShader(id);
    }

    // ここからはエラー処理
    let mut success: gl::types::GLint = 1;
    unsafe {
        gl.GetShaderiv(
            id, 
            gl::COMPILE_STATUS, 
            &mut success
        );
    }

    if success == 0 {
        let mut len: gl::types::GLint = 0;
        unsafe {
            gl.GetShaderiv(
                id, 
                gl::INFO_LOG_LENGTH, 
                &mut len
            );
        }

        // usize分のCString（空文字列）を作成
        let error = create_whitespace_cstring_with_len(len as usize);

        unsafe {
            gl.GetShaderInfoLog(
                id,
                len,
                std::ptr::null_mut(),
                error.as_ptr() as *mut gl::types::GLchar,
            );
        }

        return Err(error.to_string_lossy().into_owned());
    }
    Ok(id)
}

// 別の関数に用いるための空のCStringを作成するために必要な行の抽出
fn create_whitespace_cstring_with_len(len: usize) -> CString {
    // バッファサイズ取得
    let mut buffer: Vec<u8> = Vec::with_capacity(len + 4);
    // バッファを空白に
    buffer.extend([b' '].iter().cycle().take(len));
    // バッファをCStringに
    unsafe { CString::from_vec_unchecked(buffer) }
}
