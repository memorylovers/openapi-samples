# openapi.api.DefaultApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listPetToysResponseList**](DefaultApi.md#listpettoysresponselist) | **GET** /pets/{petId}/toys | 
[**petsCreate**](DefaultApi.md#petscreate) | **POST** /pets | 
[**petsDelete**](DefaultApi.md#petsdelete) | **DELETE** /pets/{petId} | 
[**petsList**](DefaultApi.md#petslist) | **GET** /pets | 
[**petsRead**](DefaultApi.md#petsread) | **GET** /pets/{petId} | 


# **listPetToysResponseList**
> ToyListResults listPetToysResponseList(petId, nameFilter)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String petId = petId_example; // String | 
final String nameFilter = nameFilter_example; // String | 

try {
    final response = api.listPetToysResponseList(petId, nameFilter);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->listPetToysResponseList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **petId** | **String**|  | 
 **nameFilter** | **String**|  | 

### Return type

[**ToyListResults**](ToyListResults.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **petsCreate**
> Pet petsCreate(pet)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final Pet pet = ; // Pet | 

try {
    final response = api.petsCreate(pet);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->petsCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pet** | [**Pet**](Pet.md)|  | 

### Return type

[**Pet**](Pet.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **petsDelete**
> petsDelete(petId)



Delete a pet.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final int petId = 56; // int | 

try {
    api.petsDelete(petId);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->petsDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **petId** | **int**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **petsList**
> PetListResults petsList(nextLink)



<blink>List pets.</blink>

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String nextLink = nextLink_example; // String | 

try {
    final response = api.petsList(nextLink);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->petsList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nextLink** | **String**|  | [optional] 

### Return type

[**PetListResults**](PetListResults.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **petsRead**
> Pet petsRead(petId)



Returns a pet. Supports eTags.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final int petId = 56; // int | 

try {
    final response = api.petsRead(petId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->petsRead: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **petId** | **int**|  | 

### Return type

[**Pet**](Pet.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

