// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dio/dio.dart';

import 'client/client_client.dart';

/// Pet Store Service `v0.0.1`.
///
/// This is a sample server Petstore server.  You can find out more about Swagger at [http://swagger.io](http://swagger.io) or on [irc.freenode.net, #swagger](http://swagger.io/irc/).  For this sample, you can use the api key `special-key` to test the authorization filters.
class RestClient {
  RestClient(
    Dio dio, {
    String? baseUrl,
  })  : _dio = dio,
        _baseUrl = baseUrl;

  final Dio _dio;
  final String? _baseUrl;

  ClientClient? _client;

  ClientClient get client => _client ??= ClientClient(_dio, baseUrl: _baseUrl);
}
