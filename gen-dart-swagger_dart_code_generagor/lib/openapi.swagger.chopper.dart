// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'openapi.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$Openapi extends Openapi {
  _$Openapi([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = Openapi;

  @override
  Future<Response<PetListResults>> _petsGet({String? nextLink}) {
    final Uri $url = Uri.parse('/pets');
    final Map<String, dynamic> $params = <String, dynamic>{
      'nextLink': nextLink
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<PetListResults, PetListResults>($request);
  }

  @override
  Future<Response<Pet>> _petsPost({required Pet? body}) {
    final Uri $url = Uri.parse('/pets');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<Pet, Pet>($request);
  }

  @override
  Future<Response<dynamic>> _petsPetIdDelete({required int? petId}) {
    final Uri $url = Uri.parse('/pets/${petId}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<Pet>> _petsPetIdGet({required int? petId}) {
    final Uri $url = Uri.parse('/pets/${petId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<Pet, Pet>($request);
  }

  @override
  Future<Response<ToyListResults>> _petsPetIdToysGet({
    required String? petId,
    required String? nameFilter,
  }) {
    final Uri $url = Uri.parse('/pets/${petId}/toys');
    final Map<String, dynamic> $params = <String, dynamic>{
      'nameFilter': nameFilter
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<ToyListResults, ToyListResults>($request);
  }
}
