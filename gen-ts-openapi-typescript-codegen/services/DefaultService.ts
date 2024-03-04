/* generated using openapi-typescript-codegen -- do no edit */
/* istanbul ignore file */
/* tslint:disable */
/* eslint-disable */
import type { Error } from '../models/Error';
import type { Pet } from '../models/Pet';
import type { PetListResults } from '../models/PetListResults';
import type { ToyListResults } from '../models/ToyListResults';
import type { CancelablePromise } from '../core/CancelablePromise';
import { OpenAPI } from '../core/OpenAPI';
import { request as __request } from '../core/request';
export class DefaultService {
    /**
     * <blink>List pets.</blink>
     * @param nextLink
     * @returns PetListResults The request has succeeded.
     * @returns Error An unexpected error response.
     * @throws ApiError
     */
    public static petsList(
        nextLink?: string,
    ): CancelablePromise<PetListResults | Error> {
        return __request(OpenAPI, {
            method: 'GET',
            url: '/pets',
            query: {
                'nextLink': nextLink,
            },
        });
    }
    /**
     * @param requestBody
     * @returns Pet The request has succeeded.
     * @returns Error An unexpected error response.
     * @throws ApiError
     */
    public static petsCreate(
        requestBody: Pet,
    ): CancelablePromise<Pet | Error> {
        return __request(OpenAPI, {
            method: 'POST',
            url: '/pets',
            body: requestBody,
            mediaType: 'application/json',
        });
    }
    /**
     * Delete a pet.
     * @param petId
     * @returns any The request has succeeded.
     * @returns Error An unexpected error response.
     * @throws ApiError
     */
    public static petsDelete(
        petId: number,
    ): CancelablePromise<any | Error> {
        return __request(OpenAPI, {
            method: 'DELETE',
            url: '/pets/{petId}',
            path: {
                'petId': petId,
            },
        });
    }
    /**
     * Returns a pet. Supports eTags.
     * @param petId
     * @returns Pet The request has succeeded.
     * @returns Error An unexpected error response.
     * @throws ApiError
     */
    public static petsRead(
        petId: number,
    ): CancelablePromise<Pet | Error> {
        return __request(OpenAPI, {
            method: 'GET',
            url: '/pets/{petId}',
            path: {
                'petId': petId,
            },
            errors: {
                304: `The client has made a conditional request and the resource has not been modified.`,
            },
        });
    }
    /**
     * @param petId
     * @param nameFilter
     * @returns ToyListResults The request has succeeded.
     * @returns Error An unexpected error response.
     * @throws ApiError
     */
    public static listPetToysResponseList(
        petId: string,
        nameFilter: string,
    ): CancelablePromise<ToyListResults | Error> {
        return __request(OpenAPI, {
            method: 'GET',
            url: '/pets/{petId}/toys',
            path: {
                'petId': petId,
            },
            query: {
                'nameFilter': nameFilter,
            },
        });
    }
}
