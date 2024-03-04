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
# preview site: http://localhost:3000
```

## tools

### define spec

- [TypeSpec](https://typespec.io/)

### generate typescript

- [drwpow/openapi-typescript](https://github.com/drwpow/openapi-typescript)
- [ferdikoomen/openapi-typescript-codegen](https://github.com/ferdikoomen/openapi-typescript-codegen)

### generate dart

- [openapi generator cli](https://openapi-generator.tech/docs/generators/dart)

### generate doc

- [swagger-ui](https://github.com/swagger-api/swagger-ui/tree/master)
- [bootprint/bootprint-openapi](https://github.com/bootprint/bootprint-openapi)
- [spectacle](https://github.com/sourcey/spectacle)
- [redoc-cli](https://redocly.com/docs/redoc/deployment/cli/)
  - [redoc-cli - npm](https://www.npmjs.com/package/redoc-cli)

## refs

- [TypeScript のような構文で OpenAPI のスキーマを定義する TypeSpec](https://azukiazusa.dev/blog/typescript-like-syntax-for-openapi-schemas/)
- [OpenAPI から TypeScript のコードを生成する系全般](https://zenn.dev/fizumi/scraps/779a274262948f)
- [Swagger Specから静的なHTMLを作るHTMLジェネレータを色々ためしてみた #swagger - Qiita](https://qiita.com/buzztaiki/items/6b04d735f28e00b8b574)
