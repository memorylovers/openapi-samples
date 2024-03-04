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

final api_instance = DefaultApi();
final petId = petId_example; // String | 
final nameFilter = nameFilter_example; // String | 

try {
    final result = api_instance.listPetToysResponseList(petId, nameFilter);
    print(result);
} catch (e) {
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

final api_instance = DefaultApi();
final pet = Pet(); // Pet | 

try {
    final result = api_instance.petsCreate(pet);
    print(result);
} catch (e) {
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

final api_instance = DefaultApi();
final petId = 56; // int | 

try {
    api_instance.petsDelete(petId);
} catch (e) {
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

final api_instance = DefaultApi();
final nextLink = nextLink_example; // String | 

try {
    final result = api_instance.petsList(nextLink);
    print(result);
} catch (e) {
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

final api_instance = DefaultApi();
final petId = 56; // int | 

try {
    final result = api_instance.petsRead(petId);
    print(result);
} catch (e) {
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

