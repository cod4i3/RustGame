
use std::fs;
use std::io::{self, Read};
use std::ffi;
use std::path::{Path, PathBuf};

// デバッグ特性を付与
#[derive(Debug)]
// このモジュールが返す可能性のあるエラーを含む列挙型
pub enum Error{
  Io(io::Error),
  FileContainsNil,
  FaliedToGetExePath,
}

impl From<io::Error> fir Error{
  fn from(other: io::Error) -> Self{
    Error::Io(other)
  }
}

pub struct Resources{
  root_path: PathBuf,
}

// Resourcesのトレイト
impl Resources{
  pub fn from_relative_exe_path(rel_path: &Path)
  ->  Result<Resources, Error>{
    let exe_file_name = ::std::env::current_exe()
       .map_err(|_|Error::FaliedToGetExePath)?;

    let exe_path = exe_file_name.parent()
       .ok_or(Error::FaliedToGetExePath)?;

    Ok(Resources{
      root_path: exe_path.join(rel_path)
    })
  }
}