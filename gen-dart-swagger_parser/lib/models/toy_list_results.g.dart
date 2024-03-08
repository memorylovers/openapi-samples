// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'toy_list_results.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ToyListResultsImpl _$$ToyListResultsImplFromJson(Map<String, dynamic> json) =>
    _$ToyListResultsImpl(
      items: (json['items'] as List<dynamic>)
          .map((e) => Toy.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextLink: json['nextLink'] as String,
    );

Map<String, dynamic> _$$ToyListResultsImplToJson(
        _$ToyListResultsImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
      'nextLink': instance.nextLink,
    };
