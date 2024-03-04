#!/bin/bash

### generate openapi.yaml
pnpm tsp compile api-spec/main.tsp

### generete typescript
# openapi-typescript
pnpm openapi-typescript ./openapi.yaml -o gen-ts-openapi-typescript/schema.d.ts
# openapi-typescript-codegen
pnpm openapi --input ./openapi.yaml --output ./gen-ts-openapi-typescript-codegen
# openapi-generator-cli(typescript)
pnpm openapi-generator-cli generate -g typescript -i ./openapi.yaml -o gen-ts-openapi-generator-cli-typescript
# openapi-generator-cli(typescript-fetch)
pnpm openapi-generator-cli generate -g typescript-fetch -i ./openapi.yaml -o gen-ts-openapi-generator-cli-typescript-fetch

### generate dart
# openapi-generator-cli(dart)
pnpm openapi-generator-cli generate -g dart -i ./openapi.yaml -o gen-dart-openapi-generator-cli-dart
# openapi-generator-cli(dart-dio)
pnpm openapi-generator-cli generate -g dart-dio -i ./openapi.yaml -o gen-dart-openapi-generator-cli-dart-dio

### generate doc
# openapi-generator-cli(html)
pnpm openapi-generator-cli generate -g html -i ./openapi.yaml -o gen-doc-openapi-generator-cli-html
# openapi-generator-cli(html2)
pnpm openapi-generator-cli generate -g html2 -i ./openapi.yaml -o gen-doc-openapi-generator-cli-html2
# bootprint
pnpm bootprint openapi openapi.yaml gen-doc-bootprint
# redoc
pnpm redoc-cli build-docs openapi.yaml -o gen-doc-redoc/index.html
# swagger-ui
cp openapi.yaml gen-doc-swagger-ui/openapi.yaml