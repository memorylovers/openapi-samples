import * as v from "valibot";

export type Error = v.InferOutput<typeof Error>;
export const Error = v.object({
  code: v.number(),
  message: v.string(),
});

export type Pet = v.InferOutput<typeof Pet>;
export const Pet = v.object({
  name: v.string(),
  tag: v.optional(v.union([v.string(), v.undefined_()])),
  age: v.number(),
});

export type PetListResults = v.InferOutput<typeof PetListResults>;
export const PetListResults = v.object({
  items: v.array(Pet),
  nextLink: v.optional(v.union([v.string(), v.undefined_()])),
});

export type Toy = v.InferOutput<typeof Toy>;
export const Toy = v.object({
  id: v.number(),
  petId: v.number(),
  name: v.string(),
});

export type ToyListResults = v.InferOutput<typeof ToyListResults>;
export const ToyListResults = v.object({
  items: v.array(Toy),
  nextLink: v.optional(v.union([v.string(), v.undefined_()])),
});

export type __ENDPOINTS_START__ = v.InferOutput<typeof __ENDPOINTS_START__>;
export const __ENDPOINTS_START__ = v.object({});

export type get_Pets_list = v.InferOutput<typeof get_Pets_list>;
export const get_Pets_list = v.object({
  method: v.literal("GET"),
  path: v.literal("/pets"),
  parameters: v.object({
    query: v.object({
      nextLink: v.optional(v.string()),
    }),
  }),
  response: PetListResults,
});

export type post_Pets_create = v.InferOutput<typeof post_Pets_create>;
export const post_Pets_create = v.object({
  method: v.literal("POST"),
  path: v.literal("/pets"),
  parameters: v.object({
    body: Pet,
  }),
  response: Pet,
});

export type delete_Pets_delete = v.InferOutput<typeof delete_Pets_delete>;
export const delete_Pets_delete = v.object({
  method: v.literal("DELETE"),
  path: v.literal("/pets/{petId}"),
  parameters: v.object({
    path: v.object({
      petId: v.number(),
    }),
  }),
  response: v.unknown(),
});

export type get_Pets_read = v.InferOutput<typeof get_Pets_read>;
export const get_Pets_read = v.object({
  method: v.literal("GET"),
  path: v.literal("/pets/{petId}"),
  parameters: v.object({
    path: v.object({
      petId: v.number(),
    }),
  }),
  response: Pet,
});

export type get_ListPetToysResponse_list = v.InferOutput<typeof get_ListPetToysResponse_list>;
export const get_ListPetToysResponse_list = v.object({
  method: v.literal("GET"),
  path: v.literal("/pets/{petId}/toys"),
  parameters: v.object({
    query: v.object({
      nameFilter: v.string(),
    }),
    path: v.object({
      petId: v.string(),
    }),
  }),
  response: ToyListResults,
});

export type __ENDPOINTS_END__ = v.InferOutput<typeof __ENDPOINTS_END__>;
export const __ENDPOINTS_END__ = v.object({});

// <EndpointByMethod>
export const EndpointByMethod = {
  get: {
    "/pets": get_Pets_list,
    "/pets/{petId}": get_Pets_read,
    "/pets/{petId}/toys": get_ListPetToysResponse_list,
  },
  post: {
    "/pets": post_Pets_create,
  },
  delete: {
    "/pets/{petId}": delete_Pets_delete,
  },
};
export type EndpointByMethod = typeof EndpointByMethod;
// </EndpointByMethod>

// <EndpointByMethod.Shorthands>
export type GetEndpoints = EndpointByMethod["get"];
export type PostEndpoints = EndpointByMethod["post"];
export type DeleteEndpoints = EndpointByMethod["delete"];
export type AllEndpoints = EndpointByMethod[keyof EndpointByMethod];
// </EndpointByMethod.Shorthands>

// <ApiClientTypes>
export type EndpointParameters = {
  body?: unknown;
  query?: Record<string, unknown>;
  header?: Record<string, unknown>;
  path?: Record<string, unknown>;
};

export type MutationMethod = "post" | "put" | "patch" | "delete";
export type Method = "get" | "head" | MutationMethod;

export type DefaultEndpoint = {
  parameters?: EndpointParameters | undefined;
  response: unknown;
};

export type Endpoint<TConfig extends DefaultEndpoint = DefaultEndpoint> = {
  operationId: string;
  method: Method;
  path: string;
  parameters?: TConfig["parameters"];
  meta: {
    alias: string;
    hasParameters: boolean;
    areParametersRequired: boolean;
  };
  response: TConfig["response"];
};

type Fetcher = (
  method: Method,
  url: string,
  parameters?: EndpointParameters | undefined,
) => Promise<Endpoint["response"]>;

type RequiredKeys<T> = {
  [P in keyof T]-?: undefined extends T[P] ? never : P;
}[keyof T];

type MaybeOptionalArg<T> = RequiredKeys<T> extends never ? [config?: T] : [config: T];

// </ApiClientTypes>

// <ApiClient>
export class ApiClient {
  baseUrl: string = "";

  constructor(public fetcher: Fetcher) {}

  setBaseUrl(baseUrl: string) {
    this.baseUrl = baseUrl;
    return this;
  }

  // <ApiClient.get>
  get<Path extends keyof GetEndpoints, TEndpoint extends GetEndpoints[Path]>(
    path: Path,
    ...params: MaybeOptionalArg<v.InferOutput<TEndpoint>["parameters"]>
  ): Promise<v.InferOutput<TEndpoint>["response"]> {
    return this.fetcher("get", this.baseUrl + path, params[0]) as Promise<v.InferOutput<TEndpoint>["response"]>;
  }
  // </ApiClient.get>

  // <ApiClient.post>
  post<Path extends keyof PostEndpoints, TEndpoint extends PostEndpoints[Path]>(
    path: Path,
    ...params: MaybeOptionalArg<v.InferOutput<TEndpoint>["parameters"]>
  ): Promise<v.InferOutput<TEndpoint>["response"]> {
    return this.fetcher("post", this.baseUrl + path, params[0]) as Promise<v.InferOutput<TEndpoint>["response"]>;
  }
  // </ApiClient.post>

  // <ApiClient.delete>
  delete<Path extends keyof DeleteEndpoints, TEndpoint extends DeleteEndpoints[Path]>(
    path: Path,
    ...params: MaybeOptionalArg<v.InferOutput<TEndpoint>["parameters"]>
  ): Promise<v.InferOutput<TEndpoint>["response"]> {
    return this.fetcher("delete", this.baseUrl + path, params[0]) as Promise<v.InferOutput<TEndpoint>["response"]>;
  }
  // </ApiClient.delete>
}

export function createApiClient(fetcher: Fetcher, baseUrl?: string) {
  return new ApiClient(fetcher).setBaseUrl(baseUrl ?? "");
}

/**
 Example usage:
 const api = createApiClient((method, url, params) =>
   fetch(url, { method, body: JSON.stringify(params) }).then((res) => res.json()),
 );
 api.get("/users").then((users) => console.log(users));
 api.post("/users", { body: { name: "John" } }).then((user) => console.log(user));
 api.put("/users/:id", { path: { id: 1 }, body: { name: "John" } }).then((user) => console.log(user));
*/

// </ApiClient
