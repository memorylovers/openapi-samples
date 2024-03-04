//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class DefaultApi {
  DefaultApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'GET /pets/{petId}/toys' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] petId (required):
  ///
  /// * [String] nameFilter (required):
  Future<Response> listPetToysResponseListWithHttpInfo(String petId, String nameFilter,) async {
    // ignore: prefer_const_declarations
    final path = r'/pets/{petId}/toys'
      .replaceAll('{petId}', petId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'nameFilter', nameFilter));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] petId (required):
  ///
  /// * [String] nameFilter (required):
  Future<ToyListResults?> listPetToysResponseList(String petId, String nameFilter,) async {
    final response = await listPetToysResponseListWithHttpInfo(petId, nameFilter,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ToyListResults',) as ToyListResults;
    
    }
    return null;
  }

  /// Performs an HTTP 'POST /pets' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [Pet] pet (required):
  Future<Response> petsCreateWithHttpInfo(Pet pet,) async {
    // ignore: prefer_const_declarations
    final path = r'/pets';

    // ignore: prefer_final_locals
    Object? postBody = pet;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [Pet] pet (required):
  Future<Pet?> petsCreate(Pet pet,) async {
    final response = await petsCreateWithHttpInfo(pet,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Pet',) as Pet;
    
    }
    return null;
  }

  /// Delete a pet.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] petId (required):
  Future<Response> petsDeleteWithHttpInfo(int petId,) async {
    // ignore: prefer_const_declarations
    final path = r'/pets/{petId}'
      .replaceAll('{petId}', petId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete a pet.
  ///
  /// Parameters:
  ///
  /// * [int] petId (required):
  Future<void> petsDelete(int petId,) async {
    final response = await petsDeleteWithHttpInfo(petId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// <blink>List pets.</blink>
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] nextLink:
  Future<Response> petsListWithHttpInfo({ String? nextLink, }) async {
    // ignore: prefer_const_declarations
    final path = r'/pets';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (nextLink != null) {
      queryParams.addAll(_queryParams('', 'nextLink', nextLink));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// <blink>List pets.</blink>
  ///
  /// Parameters:
  ///
  /// * [String] nextLink:
  Future<PetListResults?> petsList({ String? nextLink, }) async {
    final response = await petsListWithHttpInfo( nextLink: nextLink, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PetListResults',) as PetListResults;
    
    }
    return null;
  }

  /// Returns a pet. Supports eTags.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] petId (required):
  Future<Response> petsReadWithHttpInfo(int petId,) async {
    // ignore: prefer_const_declarations
    final path = r'/pets/{petId}'
      .replaceAll('{petId}', petId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Returns a pet. Supports eTags.
  ///
  /// Parameters:
  ///
  /// * [int] petId (required):
  Future<Pet?> petsRead(int petId,) async {
    final response = await petsReadWithHttpInfo(petId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Pet',) as Pet;
    
    }
    return null;
  }
}
