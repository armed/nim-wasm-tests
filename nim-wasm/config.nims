# begin Nimble config (version 2)
when withDir(thisDir(), system.fileExists("nimble.paths")):
  include "nimble.paths"
# end Nimble config

--i386.windows.gcc.exe:"i686-w64-mingw32-gcc"
--i386.windows.gcc.linkerexe:"i686-w64-mingw32-gcc"
--amd64.windows.gcc.exe:"x86_64-w64-mingw32-gcc"
--amd64.windows.gcc.linkerexe:"x86_64-w64-mingw32-gcc"

--amd64.linux.gcc.exe:"x86_64-linux-gnu-gcc"
--amd64.linux.gcc.linkerexe:"x86_64-linux-gnu-gcc"
--arm64.linux.gcc.exe:"aarch64-linux-gnu-gcc"
--arm64.linux.gcc.linkerexe:"aarch64-linux-gnu-gcc"

--d:release

when defined(windows):
  --passC:"-D_WIN32_WINNT=0x0502"
  switch("out", "../out/nim_wasm.exe")
else:
  switch("out", "../out/nim_wasm")
