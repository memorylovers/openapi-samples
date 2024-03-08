// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

import 'openapi.models.swagger.dart';
import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:http/http.dart' show MultipartFile;
import 'package:chopper/chopper.dart' as chopper;
export 'openapi.models.swagger.dart';

part 'openapi.swagger.chopper.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class Openapi extends ChopperService {
  static Openapi create({
    ChopperClient? client,
    http.Client? httpClient,
    Authenticator? authenticator,
    ErrorConverter? errorConverter,
    Converter? converter,
    Uri? baseUrl,
    Iterable<dynamic>? interceptors,
  }) {
    if (client != null) {
      return _$Openapi(client);
    }

    final newClient = ChopperClient(
        services: [_$Openapi()],
        converter: converter ?? $JsonSerializableConverter(),
        interceptors: interceptors ?? [],
        client: httpClient,
        authenticator: authenticator,
        errorConverter: errorConverter,
        baseUrl: baseUrl ?? Uri.parse('http://'));
    return _$Openapi(newClient);
  }

  ///
  ///@param nextLink
  Future<chopper.Response<PetListResults>> petsGet({String? nextLink}) {
    generatedMapping.putIfAbsent(
        PetListResults, () => PetListResults.fromJsonFactory);

    return _petsGet(nextLink: nextLink);
  }

  ///
  ///@param nextLink
  @Get(path: '/pets')
  Future<chopper.Response<PetListResults>> _petsGet(
      {@Query('nextLink') String? nextLink});

  ///
  Future<chopper.Response<Pet>> petsPost({required Pet? body}) {
    generatedMapping.putIfAbsent(Pet, () => Pet.fromJsonFactory);

    return _petsPost(body: body);
  }

  ///
  @Post(
    path: '/pets',
    optionalBody: true,
  )
  Future<chopper.Response<Pet>> _petsPost({@Body() required Pet? body});

  ///
  ///@param petId
  Future<chopper.Response> petsPetIdDelete({required int? petId}) {
    return _petsPetIdDelete(petId: petId);
  }

  ///
  ///@param petId
  @Delete(path: '/pets/{petId}')
  Future<chopper.Response> _petsPetIdDelete(
      {@Path('petId') required int? petId});

  ///
  ///@param petId
  Future<chopper.Response<Pet>> petsPetIdGet({required int? petId}) {
    generatedMapping.putIfAbsent(Pet, () => Pet.fromJsonFactory);

    return _petsPetIdGet(petId: petId);
  }

  ///
  ///@param petId
  @Get(path: '/pets/{petId}')
  Future<chopper.Response<Pet>> _petsPetIdGet(
      {@Path('petId') required int? petId});

  ///
  ///@param petId
  ///@param nameFilter
  Future<chopper.Response<ToyListResults>> petsPetIdToysGet({
    required String? petId,
    required String? nameFilter,
  }) {
    generatedMapping.putIfAbsent(
        ToyListResults, () => ToyListResults.fromJsonFactory);

    return _petsPetIdToysGet(petId: petId, nameFilter: nameFilter);
  }

  ///
  ///@param petId
  ///@param nameFilter
  @Get(path: '/pets/{petId}/toys')
  Future<chopper.Response<ToyListResults>> _petsPetIdToysGet({
    @Path('petId') required String? petId,
    @Query('nameFilter') required String? nameFilter,
  });
}

typedef $JsonFactory<T> = T Function(Map<String, dynamic> json);

class $CustomJsonDecoder {
  $CustomJsonDecoder(this.factories);

  final Map<Type, $JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (isTypeOf<T, Map>()) {
      return entity;
    }

    if (isTypeOf<T, Iterable>()) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! $JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

class $JsonSerializableConverter extends chopper.JsonConverter {
  @override
  FutureOr<chopper.Response<ResultType>> convertResponse<ResultType, Item>(
      chopper.Response response) async {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    if (ResultType == String) {
      return response.copyWith();
    }

    if (ResultType == DateTime) {
      return response.copyWith(
          body: DateTime.parse((response.body as String).replaceAll('"', ''))
              as ResultType);
    }

    final jsonRes = await super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
        body: $jsonDecoder.decode<Item>(jsonRes.body) as ResultType);
  }
}

final $jsonDecoder = $CustomJsonDecoder(generatedMapping);
