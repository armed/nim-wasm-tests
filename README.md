steps to reproduce
1. `cd hello`
2. `npm i`
3. `npx asc hello.ts -o ../nim-wasm/src/hello.wasm`
4. `cd ../nim-wasm`
5. `nim c src/nim_wasm.nim`
