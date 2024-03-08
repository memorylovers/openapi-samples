// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet_list_results.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PetListResultsImpl _$$PetListResultsImplFromJson(Map<String, dynamic> json) =>
    _$PetListResultsImpl(
      items: (json['items'] as List<dynamic>)
          .map((e) => Pet.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextLink: json['nextLink'] as String,
    );

Map<String, dynamic> _$$PetListResultsImplToJson(
        _$PetListResultsImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
      'nextLink': instance.nextLink,
    };
