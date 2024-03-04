import { ResponseContext, RequestContext, HttpFile, HttpInfo } from '../http/http';
import { Configuration} from '../configuration'

import { ModelError } from '../models/ModelError';
import { Pet } from '../models/Pet';
import { PetListResults } from '../models/PetListResults';
import { Toy } from '../models/Toy';
import { ToyListResults } from '../models/ToyListResults';
import { ObservableDefaultApi } from './ObservableAPI';

import { DefaultApiRequestFactory, DefaultApiResponseProcessor} from "../apis/DefaultApi";
export class PromiseDefaultApi {
    private api: ObservableDefaultApi

    public constructor(
        configuration: Configuration,
        requestFactory?: DefaultApiRequestFactory,
        responseProcessor?: DefaultApiResponseProcessor
    ) {
        this.api = new ObservableDefaultApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * @param petId 
     * @param nameFilter 
     */
    public listPetToysResponseListWithHttpInfo(petId: string, nameFilter: string, _options?: Configuration): Promise<HttpInfo<ToyListResults>> {
        const result = this.api.listPetToysResponseListWithHttpInfo(petId, nameFilter, _options);
        return result.toPromise();
    }

    /**
     * @param petId 
     * @param nameFilter 
     */
    public listPetToysResponseList(petId: string, nameFilter: string, _options?: Configuration): Promise<ToyListResults> {
        const result = this.api.listPetToysResponseList(petId, nameFilter, _options);
        return result.toPromise();
    }

    /**
     * @param pet 
     */
    public petsCreateWithHttpInfo(pet: Pet, _options?: Configuration): Promise<HttpInfo<Pet>> {
        const result = this.api.petsCreateWithHttpInfo(pet, _options);
        return result.toPromise();
    }

    /**
     * @param pet 
     */
    public petsCreate(pet: Pet, _options?: Configuration): Promise<Pet> {
        const result = this.api.petsCreate(pet, _options);
        return result.toPromise();
    }

    /**
     * Delete a pet.
     * @param petId 
     */
    public petsDeleteWithHttpInfo(petId: number, _options?: Configuration): Promise<HttpInfo<void>> {
        const result = this.api.petsDeleteWithHttpInfo(petId, _options);
        return result.toPromise();
    }

    /**
     * Delete a pet.
     * @param petId 
     */
    public petsDelete(petId: number, _options?: Configuration): Promise<void> {
        const result = this.api.petsDelete(petId, _options);
        return result.toPromise();
    }

    /**
     * <blink>List pets.</blink>
     * @param nextLink 
     */
    public petsListWithHttpInfo(nextLink?: string, _options?: Configuration): Promise<HttpInfo<PetListResults>> {
        const result = this.api.petsListWithHttpInfo(nextLink, _options);
        return result.toPromise();
    }

    /**
     * <blink>List pets.</blink>
     * @param nextLink 
     */
    public petsList(nextLink?: string, _options?: Configuration): Promise<PetListResults> {
        const result = this.api.petsList(nextLink, _options);
        return result.toPromise();
    }

    /**
     * Returns a pet. Supports eTags.
     * @param petId 
     */
    public petsReadWithHttpInfo(petId: number, _options?: Configuration): Promise<HttpInfo<Pet>> {
        const result = this.api.petsReadWithHttpInfo(petId, _options);
        return result.toPromise();
    }

    /**
     * Returns a pet. Supports eTags.
     * @param petId 
     */
    public petsRead(petId: number, _options?: Configuration): Promise<Pet> {
        const result = this.api.petsRead(petId, _options);
        return result.toPromise();
    }


}



