/*
    参考URL:http://nercury.github.io/
    OpenGLの知識に関する日本語資料としてはこれがおすすめ
    https://tokoik.github.io/GLFWdraft.pdf

    ここでは変数などはスネークケースで統一しているが
    上記のglfwではキャメルケースなので一応注意
    また、コメントは暇つぶし兼自分の知識の復習のため思い出せる範囲で
    注意点意外にも細かい解説を書いておく
    一応知識としては覚えておいて損はない範囲で書く予定なので許して欲しい
    あまりに長くなりすぎた場合はmemoファイル内に記載している
*/
extern crate gl;
extern crate sdl2;

pub mod render_gl;
pub mod resources;

use resources::Resources;
use std::path::Path;

fn main() {
    let res = Resources::from_relative_exe_path(Path::new("assets")).unwrap();


    // 自分のソースのスタックとレースのみを表示するおまじない
    // better_panic::install();
    // window関連の設定
    let sdl = sdl2::init().unwrap();
    let video_subsystem = sdl.video().unwrap();

    /*
      ここで注意して欲しいのはOpenGLのVersion設定
      Windows,Linuxなら4.0以降も使えるがMac対応の為3.3を用いる
      長々と書いていたら完全に脱線した為詳しくはmemo参照
    */
    let gl_attr = video_subsystem.gl_attr();
    gl_attr.set_context_profile(sdl2::video::GLProfile::Core);
    gl_attr.set_context_version(3, 3);

    let window = video_subsystem
        .window("Hello World", 800, 600)
        .resizable()
        .build()
        .unwrap();

    // OpenGL Contextの作成,及び関数ポインタのロード
    // つまりはSDLではなくOpenGLを使うためのおまじないのようなもの
    // という大雑把な解釈でも可（これでgl関数が使用できるようになっている）
    let _gl_context = window.gl_create_context().unwrap();
    let gl =
        gl::Gl::load_with(
            |s| video_subsystem.gl_get_proc_address(s) as *const std::os::raw::c_void
        );

    unsafe {
        // Retina WindowなのでViewPortを二倍にする
        // やらなくてもちょっと画面を動かせばできるが綺麗にしたかった

        let mut dim = [0; 4];
        let dims = &mut dim[0] as *mut gl::types::GLint;
        gl.GetIntegerv(gl::VIEWPORT, dims);
        gl.Viewport(0, 0, *dims.offset(2), *dims.offset(3));

        // gl::Viewport(0, 0, 800 * 2, 600 * 2);
        gl.ClearColor(0.6, 0.72, 0.86, 1.0);
    }

    // バーテックスシェーダー,フラグメントシェーダーの読み込み
    // render_gl.rs 内にそれぞれの詳細が書いてある
    use std::ffi::CString;
    let vert_shader = render_gl::Shader::from_vert_source(
        &gl,
        // 改善案
        // &CString::new(include_str!("shader.vert")).unwrap()
        &CString::new(include_str!("triangle.vert")).unwrap(),
    )
    .unwrap();

    let frag_shader = render_gl::Shader::from_frag_source(
        &gl,
        // 改善案
        // &CString::new(include_str!("shader.vert")).unwrap()
        &CString::new(include_str!("triangle.flag")).unwrap(),
    )
    .unwrap();

    // 上記のシェーダーを用いてプログラムの作成
    let shader_program = render_gl::Program::from_res(
        &gl,
        &res,
        "shaders/triangle"
    ).unwrap();

    // 図形の位置情報と色情報
    let vertices: Vec<f32> = vec![
        -0.5, -0.5, 0.0, 1.0, 0.0, 0.0, // 右下
        0.5, -0.5, 0.0, 0.0, 1.0, 0.0, // 左下
        0.0, 0.5, 0.0, 0.0, 0.0, 1.0, // 上
    ];

    // 頂点バッファオブジェクト
    let mut vbo: gl::types::GLuint = 0;
    unsafe {
        gl.GenBuffers(1, &mut vbo);
    }

    unsafe {
        gl.BindBuffer(gl::ARRAY_BUFFER, vbo);
        gl.BufferData(
            gl::ARRAY_BUFFER,                                                       //target
            (vertices.len() * std::mem::size_of::<f32>()) as gl::types::GLsizeiptr, // バイトデータのサイズ
            vertices.as_ptr() as *const gl::types::GLvoid, // データのポインタ
            gl::STATIC_DRAW, // 使いかた 頻度や変更によって変わる（前のは勘違い)
        );
        gl.BindBuffer(gl::ARRAY_BUFFER, 0); // バッファのバインドを外す
    }

    // 頂点配列オブジェクト
    let mut vao: gl::types::GLuint = 0;
    unsafe {
        gl.GenVertexArrays(1, &mut vao);
    }

    // この辺り意味は分かるがいい単語が想い浮かず、雑な訳もあるので注意
    unsafe {
        // vao, vboのバインド
        gl.BindVertexArray(vao);
        gl.BindBuffer(gl::ARRAY_BUFFER, vbo);

        // バーテックスシェーダー の "layout(location = 0)"
        gl.EnableVertexAttribArray(0); // layout(location = 0)のようなもの（下も同じ）
        gl.VertexAttribPointer(
            0,                                                    // layout(location = 0)
            3,                                                    // 頂点の数
            gl::FLOAT,                                            //型名
            gl::FALSE,                                            // intとfloatの変換
            (6 * std::mem::size_of::<f32>()) as gl::types::GLint, // ストライド、位置情報だけなら3、色情報加わると6
            std::ptr::null(),                                     // 最初のオフセット
        );

        gl.EnableVertexAttribArray(1); // layout(location = 0)のようなもの（下も同じ）
        gl.VertexAttribPointer(
            1,   // layout(location = 0)
            3,   // 頂点の数
            gl::FLOAT,    //型名
            gl::FALSE,    // intとfloatの変換
            (6 * std::mem::size_of::<f32>()) as gl::types::GLint, // ストライド、位置情報だけなら3、色情報加わると6
            (3 * std::mem::size_of::<f32>()) as *const gl::types::GLvoid, // 最初のオフセット
        );

        // バインド解除
        gl.BindBuffer(gl::ARRAY_BUFFER, 0);
        gl.BindVertexArray(0);
    }

    // ウィンドウイベントとそれを永続的に表示するためのloop
    // matchで判別され、Quit処理になった瞬間ループ終了、それ以外ならループ継続
    let mut event_pump = sdl.event_pump().unwrap();
    'main: loop {
        // ループ脱出部分
        for event in event_pump.poll_iter() {
            match event {
                sdl2::event::Event::Quit { .. } => break 'main,
                _ => {}
            }
        }

        // 色を上のClearColor(R,G,B,A)で初期化して
        // 画面を高速で入れ替えている。
        unsafe {
            gl.Clear(gl::COLOR_BUFFER_BIT);
        }

        // 三角形の描画
        shader_program.set_used();
        unsafe {
            gl.BindVertexArray(vao);
            gl.DrawArrays(
                gl::TRIANGLES, // モード、線画のみなど色々ある
                0,             // 開始インデックス
                3,             //  レンダリングされるインデックスの数
            )
        }

        window.gl_swap_window();
    }
}
