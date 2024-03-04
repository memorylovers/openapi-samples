# OpenAPI Samples

## how to use

### build

```sh
pnpm install
pnpm build
# or
bash build_all.sh
```

### preview doc

```sh
pnpm serve <doc-dir-path>
# ex.
pnpm serve gen-doc-swagger-ui
pnpm serve gen-doc-redoc
pnpm serve gen-doc-openapi-generator-cli-html
pnpm serve gen-doc-openapi-generator-cli-html2
pnpm serve gen-doc-bootprint
# preview site: http://localhost:3000
```

### doc demo

- [swagger-ui](https://memorylovers.github.io/openapi-samples/gen-doc-swagger-ui)
- [redoc](https://memorylovers.github.io/openapi-samples/gen-doc-redoc/)
- [openapi-generator-cli(html)](https://memorylovers.github.io/openapi-samples/gen-doc-openapi-generator-cli-html/)
- [openapi-generator-cli(html2)](https://memorylovers.github.io/openapi-samples/gen-doc-openapi-generator-cli-html2/)
- [bootprint](https://memorylovers.github.io/openapi-samples/gen-doc-bootprint/)

## tools

### define spec

- [TypeSpec](https://typespec.io/)

### generate typescript

- [drwpow/openapi-typescript](https://github.com/drwpow/openapi-typescript)
- [ferdikoomen/openapi-typescript-codegen](https://github.com/ferdikoomen/openapi-typescript-codegen)
- [openapi generator cli(typescript)](https://openapi-generator.tech/docs/generators/typescript)
- [openapi generator cli(typescript-fetch)](https://openapi-generator.tech/docs/generators/typescript-fetch)

### generate dart

- [openapi generator cli(dart)](https://openapi-generator.tech/docs/generators/dart)
- [openapi generator cli(dart-dio)](https://openapi-generator.tech/docs/generators/dart-dio)

### generate doc

- [openapi generator cli(html)](https://openapi-generator.tech/docs/generators/html)
- [openapi generator cli(html2)](https://openapi-generator.tech/docs/generators/html2)
- [swagger-ui](https://github.com/swagger-api/swagger-ui/tree/master)
- [bootprint/bootprint-openapi](https://github.com/bootprint/bootprint-openapi)
- [redoc-cli](https://redocly.com/docs/redoc/deployment/cli/)
- [spectacle](https://github.com/sourcey/spectacle)

## refs

- [TypeScript のような構文で OpenAPI のスキーマを定義する TypeSpec](https://azukiazusa.dev/blog/typescript-like-syntax-for-openapi-schemas/)
- [OpenAPI から TypeScript のコードを生成する系全般](https://zenn.dev/fizumi/scraps/779a274262948f)
- [Swagger Specから静的なHTMLを作るHTMLジェネレータを色々ためしてみた #swagger - Qiita](https://qiita.com/buzztaiki/items/6b04d735f28e00b8b574)
