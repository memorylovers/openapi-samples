// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'toy.dart';

part 'toy_list_results.freezed.dart';
part 'toy_list_results.g.dart';

@Freezed()
class ToyListResults with _$ToyListResults {
  const factory ToyListResults({
    required List<Toy> items,
    required String nextLink,
  }) = _ToyListResults;
  
  factory ToyListResults.fromJson(Map<String, Object?> json) => _$ToyListResultsFromJson(json);
}
