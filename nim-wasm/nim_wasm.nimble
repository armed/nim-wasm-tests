# Package

version       = "0.1.0"
author        = "Artem Medeu"
description   = "A new awesome nimble package"
license       = "MIT"
srcDir        = "src"
bin           = @["nim_wasm"]


# Dependencies

requires "nim >= 2.2.0"
requires "https://github.com/beef331/wasm3 >= 0.1.13"

