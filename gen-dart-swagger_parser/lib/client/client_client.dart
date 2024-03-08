// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/pet.dart';
import '../models/pet_list_results.dart';
import '../models/toy_list_results.dart';

part 'client_client.g.dart';

@RestApi()
abstract class ClientClient {
  factory ClientClient(Dio dio, {String? baseUrl}) = _ClientClient;

  /// <blink>List pets.</blink>
  @GET('/pets')
  Future<PetListResults> petsList({
    @Query('nextLink') String? nextLink,
  });

  @POST('/pets')
  Future<Pet> petsCreate({
    @Body() required Pet body,
  });

  /// Delete a pet.
  @DELETE('/pets/{petId}')
  Future<void> petsDelete({
    @Path('petId') required int petId,
  });

  /// Returns a pet. Supports eTags.
  @GET('/pets/{petId}')
  Future<Pet> petsRead({
    @Path('petId') required int petId,
  });

  @GET('/pets/{petId}/toys')
  Future<ToyListResults> listPetToysResponseList({
    @Path('petId') required String petId,
    @Query('nameFilter') required String nameFilter,
  });
}
