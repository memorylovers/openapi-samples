// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'toy.freezed.dart';
part 'toy.g.dart';

@Freezed()
class Toy with _$Toy {
  const factory Toy({
    required int id,
    required int petId,
    required String name,
  }) = _Toy;
  
  factory Toy.fromJson(Map<String, Object?> json) => _$ToyFromJson(json);
}
