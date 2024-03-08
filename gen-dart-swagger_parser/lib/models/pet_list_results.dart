// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'pet.dart';

part 'pet_list_results.freezed.dart';
part 'pet_list_results.g.dart';

@Freezed()
class PetListResults with _$PetListResults {
  const factory PetListResults({
    required List<Pet> items,
    required String nextLink,
  }) = _PetListResults;
  
  factory PetListResults.fromJson(Map<String, Object?> json) => _$PetListResultsFromJson(json);
}
