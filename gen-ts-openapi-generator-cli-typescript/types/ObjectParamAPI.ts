import { ResponseContext, RequestContext, HttpFile, HttpInfo } from '../http/http';
import { Configuration} from '../configuration'

import { ModelError } from '../models/ModelError';
import { Pet } from '../models/Pet';
import { PetListResults } from '../models/PetListResults';
import { Toy } from '../models/Toy';
import { ToyListResults } from '../models/ToyListResults';

import { ObservableDefaultApi } from "./ObservableAPI";
import { DefaultApiRequestFactory, DefaultApiResponseProcessor} from "../apis/DefaultApi";

export interface DefaultApiListPetToysResponseListRequest {
    /**
     * 
     * @type string
     * @memberof DefaultApilistPetToysResponseList
     */
    petId: string
    /**
     * 
     * @type string
     * @memberof DefaultApilistPetToysResponseList
     */
    nameFilter: string
}

export interface DefaultApiPetsCreateRequest {
    /**
     * 
     * @type Pet
     * @memberof DefaultApipetsCreate
     */
    pet: Pet
}

export interface DefaultApiPetsDeleteRequest {
    /**
     * 
     * @type number
     * @memberof DefaultApipetsDelete
     */
    petId: number
}

export interface DefaultApiPetsListRequest {
    /**
     * 
     * @type string
     * @memberof DefaultApipetsList
     */
    nextLink?: string
}

export interface DefaultApiPetsReadRequest {
    /**
     * 
     * @type number
     * @memberof DefaultApipetsRead
     */
    petId: number
}

export class ObjectDefaultApi {
    private api: ObservableDefaultApi

    public constructor(configuration: Configuration, requestFactory?: DefaultApiRequestFactory, responseProcessor?: DefaultApiResponseProcessor) {
        this.api = new ObservableDefaultApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * @param param the request object
     */
    public listPetToysResponseListWithHttpInfo(param: DefaultApiListPetToysResponseListRequest, options?: Configuration): Promise<HttpInfo<ToyListResults>> {
        return this.api.listPetToysResponseListWithHttpInfo(param.petId, param.nameFilter,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public listPetToysResponseList(param: DefaultApiListPetToysResponseListRequest, options?: Configuration): Promise<ToyListResults> {
        return this.api.listPetToysResponseList(param.petId, param.nameFilter,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public petsCreateWithHttpInfo(param: DefaultApiPetsCreateRequest, options?: Configuration): Promise<HttpInfo<Pet>> {
        return this.api.petsCreateWithHttpInfo(param.pet,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public petsCreate(param: DefaultApiPetsCreateRequest, options?: Configuration): Promise<Pet> {
        return this.api.petsCreate(param.pet,  options).toPromise();
    }

    /**
     * Delete a pet.
     * @param param the request object
     */
    public petsDeleteWithHttpInfo(param: DefaultApiPetsDeleteRequest, options?: Configuration): Promise<HttpInfo<void>> {
        return this.api.petsDeleteWithHttpInfo(param.petId,  options).toPromise();
    }

    /**
     * Delete a pet.
     * @param param the request object
     */
    public petsDelete(param: DefaultApiPetsDeleteRequest, options?: Configuration): Promise<void> {
        return this.api.petsDelete(param.petId,  options).toPromise();
    }

    /**
     * <blink>List pets.</blink>
     * @param param the request object
     */
    public petsListWithHttpInfo(param: DefaultApiPetsListRequest = {}, options?: Configuration): Promise<HttpInfo<PetListResults>> {
        return this.api.petsListWithHttpInfo(param.nextLink,  options).toPromise();
    }

    /**
     * <blink>List pets.</blink>
     * @param param the request object
     */
    public petsList(param: DefaultApiPetsListRequest = {}, options?: Configuration): Promise<PetListResults> {
        return this.api.petsList(param.nextLink,  options).toPromise();
    }

    /**
     * Returns a pet. Supports eTags.
     * @param param the request object
     */
    public petsReadWithHttpInfo(param: DefaultApiPetsReadRequest, options?: Configuration): Promise<HttpInfo<Pet>> {
        return this.api.petsReadWithHttpInfo(param.petId,  options).toPromise();
    }

    /**
     * Returns a pet. Supports eTags.
     * @param param the request object
     */
    public petsRead(param: DefaultApiPetsReadRequest, options?: Configuration): Promise<Pet> {
        return this.api.petsRead(param.petId,  options).toPromise();
    }

}
