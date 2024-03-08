// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'error.freezed.dart';
part 'error.g.dart';

/// Error
@Freezed()
class Error with _$Error {
  const factory Error({
    required int code,
    required String message,
  }) = _Error;
  
  factory Error.fromJson(Map<String, Object?> json) => _$ErrorFromJson(json);
}
