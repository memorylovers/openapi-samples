/**
 * This file was auto-generated by openapi-typescript.
 * Do not make direct changes to the file.
 */


export interface paths {
  "/pets": {
    /** @description <blink>List pets.</blink> */
    get: operations["Pets_list"];
    post: operations["Pets_create"];
  };
  "/pets/{petId}": {
    /** @description Returns a pet. Supports eTags. */
    get: operations["Pets_read"];
    /** @description Delete a pet. */
    delete: operations["Pets_delete"];
  };
  "/pets/{petId}/toys": {
    get: operations["ListPetToysResponse_list"];
  };
}

export type webhooks = Record<string, never>;

export interface components {
  schemas: {
    /** @description Error */
    Error: {
      /** Format: int32 */
      code: number;
      message: string;
    };
    Pet: {
      name: string;
      tag?: string;
      /** Format: int32 */
      age: number;
    };
    PetListResults: {
      items: components["schemas"]["Pet"][];
      nextLink?: string;
    };
    Toy: {
      /** Format: int64 */
      id: number;
      /** Format: int64 */
      petId: number;
      name: string;
    };
    ToyListResults: {
      items: components["schemas"]["Toy"][];
      nextLink?: string;
    };
  };
  responses: never;
  parameters: {
    PetId: number;
  };
  requestBodies: never;
  headers: never;
  pathItems: never;
}

export type $defs = Record<string, never>;

export type external = Record<string, never>;

export interface operations {

  /** @description <blink>List pets.</blink> */
  Pets_list: {
    parameters: {
      query?: {
        nextLink?: string;
      };
    };
    responses: {
      /** @description The request has succeeded. */
      200: {
        content: {
          "application/json": components["schemas"]["PetListResults"];
        };
      };
      /** @description An unexpected error response. */
      default: {
        content: {
          "application/json": components["schemas"]["Error"];
        };
      };
    };
  };
  Pets_create: {
    requestBody: {
      content: {
        "application/json": components["schemas"]["Pet"];
      };
    };
    responses: {
      /** @description The request has succeeded. */
      200: {
        content: {
          "application/json": components["schemas"]["Pet"];
        };
      };
      /** @description An unexpected error response. */
      default: {
        content: {
          "application/json": components["schemas"]["Error"];
        };
      };
    };
  };
  /** @description Returns a pet. Supports eTags. */
  Pets_read: {
    parameters: {
      path: {
        petId: components["parameters"]["PetId"];
      };
    };
    responses: {
      /** @description The request has succeeded. */
      200: {
        content: {
          "application/json": components["schemas"]["Pet"];
        };
      };
      /** @description The client has made a conditional request and the resource has not been modified. */
      304: {
        content: {
          "application/json": components["schemas"]["Pet"];
        };
      };
      /** @description An unexpected error response. */
      default: {
        content: {
          "application/json": components["schemas"]["Error"];
        };
      };
    };
  };
  /** @description Delete a pet. */
  Pets_delete: {
    parameters: {
      path: {
        petId: components["parameters"]["PetId"];
      };
    };
    responses: {
      /** @description The request has succeeded. */
      200: {
        content: never;
      };
      /** @description An unexpected error response. */
      default: {
        content: {
          "application/json": components["schemas"]["Error"];
        };
      };
    };
  };
  ListPetToysResponse_list: {
    parameters: {
      query: {
        nameFilter: string;
      };
      path: {
        petId: string;
      };
    };
    responses: {
      /** @description The request has succeeded. */
      200: {
        content: {
          "application/json": components["schemas"]["ToyListResults"];
        };
      };
      /** @description An unexpected error response. */
      default: {
        content: {
          "application/json": components["schemas"]["Error"];
        };
      };
    };
  };
}
