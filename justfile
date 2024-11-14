build-maths:
    cd maths-module && \
      npx npx asc maths.ts -o ../out/maths.wasm

run-nim:
    cd nim-wasm && nim r src/nim_wasm.nim

build-nim:
    cd nim-wasm && nim c src/nim_wasm.nim

build-nim-win:
    cd nim-wasm && nim --cpu:i386 --os:windows c src/nim_wasm.nim

