# This is just an example to get you started. A typical binary package
# uses this file as the main entry point of the application.
import pkg/wasm3

when isMainModule:
  let
    env = loadWasmEnv(readFile("maths.wasm"))
    addFunc = env.findFunction("add")
  echo "Add result: " & $addFunc.call(int32, 3i32, 4i32)
