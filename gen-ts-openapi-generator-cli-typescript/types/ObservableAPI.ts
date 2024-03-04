import { ResponseContext, RequestContext, HttpFile, HttpInfo } from '../http/http';
import { Configuration} from '../configuration'
import { Observable, of, from } from '../rxjsStub';
import {mergeMap, map} from  '../rxjsStub';
import { ModelError } from '../models/ModelError';
import { Pet } from '../models/Pet';
import { PetListResults } from '../models/PetListResults';
import { Toy } from '../models/Toy';
import { ToyListResults } from '../models/ToyListResults';

import { DefaultApiRequestFactory, DefaultApiResponseProcessor} from "../apis/DefaultApi";
export class ObservableDefaultApi {
    private requestFactory: DefaultApiRequestFactory;
    private responseProcessor: DefaultApiResponseProcessor;
    private configuration: Configuration;

    public constructor(
        configuration: Configuration,
        requestFactory?: DefaultApiRequestFactory,
        responseProcessor?: DefaultApiResponseProcessor
    ) {
        this.configuration = configuration;
        this.requestFactory = requestFactory || new DefaultApiRequestFactory(configuration);
        this.responseProcessor = responseProcessor || new DefaultApiResponseProcessor();
    }

    /**
     * @param petId 
     * @param nameFilter 
     */
    public listPetToysResponseListWithHttpInfo(petId: string, nameFilter: string, _options?: Configuration): Observable<HttpInfo<ToyListResults>> {
        const requestContextPromise = this.requestFactory.listPetToysResponseList(petId, nameFilter, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.listPetToysResponseListWithHttpInfo(rsp)));
            }));
    }

    /**
     * @param petId 
     * @param nameFilter 
     */
    public listPetToysResponseList(petId: string, nameFilter: string, _options?: Configuration): Observable<ToyListResults> {
        return this.listPetToysResponseListWithHttpInfo(petId, nameFilter, _options).pipe(map((apiResponse: HttpInfo<ToyListResults>) => apiResponse.data));
    }

    /**
     * @param pet 
     */
    public petsCreateWithHttpInfo(pet: Pet, _options?: Configuration): Observable<HttpInfo<Pet>> {
        const requestContextPromise = this.requestFactory.petsCreate(pet, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.petsCreateWithHttpInfo(rsp)));
            }));
    }

    /**
     * @param pet 
     */
    public petsCreate(pet: Pet, _options?: Configuration): Observable<Pet> {
        return this.petsCreateWithHttpInfo(pet, _options).pipe(map((apiResponse: HttpInfo<Pet>) => apiResponse.data));
    }

    /**
     * Delete a pet.
     * @param petId 
     */
    public petsDeleteWithHttpInfo(petId: number, _options?: Configuration): Observable<HttpInfo<void>> {
        const requestContextPromise = this.requestFactory.petsDelete(petId, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.petsDeleteWithHttpInfo(rsp)));
            }));
    }

    /**
     * Delete a pet.
     * @param petId 
     */
    public petsDelete(petId: number, _options?: Configuration): Observable<void> {
        return this.petsDeleteWithHttpInfo(petId, _options).pipe(map((apiResponse: HttpInfo<void>) => apiResponse.data));
    }

    /**
     * <blink>List pets.</blink>
     * @param nextLink 
     */
    public petsListWithHttpInfo(nextLink?: string, _options?: Configuration): Observable<HttpInfo<PetListResults>> {
        const requestContextPromise = this.requestFactory.petsList(nextLink, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.petsListWithHttpInfo(rsp)));
            }));
    }

    /**
     * <blink>List pets.</blink>
     * @param nextLink 
     */
    public petsList(nextLink?: string, _options?: Configuration): Observable<PetListResults> {
        return this.petsListWithHttpInfo(nextLink, _options).pipe(map((apiResponse: HttpInfo<PetListResults>) => apiResponse.data));
    }

    /**
     * Returns a pet. Supports eTags.
     * @param petId 
     */
    public petsReadWithHttpInfo(petId: number, _options?: Configuration): Observable<HttpInfo<Pet>> {
        const requestContextPromise = this.requestFactory.petsRead(petId, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.petsReadWithHttpInfo(rsp)));
            }));
    }

    /**
     * Returns a pet. Supports eTags.
     * @param petId 
     */
    public petsRead(petId: number, _options?: Configuration): Observable<Pet> {
        return this.petsReadWithHttpInfo(petId, _options).pipe(map((apiResponse: HttpInfo<Pet>) => apiResponse.data));
    }

}
