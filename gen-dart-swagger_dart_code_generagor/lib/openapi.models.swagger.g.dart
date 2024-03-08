// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'openapi.models.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Error _$ErrorFromJson(Map<String, dynamic> json) => Error(
      code: json['code'] as int,
      message: json['message'] as String,
    );

Map<String, dynamic> _$ErrorToJson(Error instance) => <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
    };

Pet _$PetFromJson(Map<String, dynamic> json) => Pet(
      name: json['name'] as String,
      tag: json['tag'] as String?,
      age: json['age'] as int,
    );

Map<String, dynamic> _$PetToJson(Pet instance) => <String, dynamic>{
      'name': instance.name,
      'tag': instance.tag,
      'age': instance.age,
    };

PetListResults _$PetListResultsFromJson(Map<String, dynamic> json) =>
    PetListResults(
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => Pet.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      nextLink: json['nextLink'] as String?,
    );

Map<String, dynamic> _$PetListResultsToJson(PetListResults instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
      'nextLink': instance.nextLink,
    };

Toy _$ToyFromJson(Map<String, dynamic> json) => Toy(
      id: json['id'] as int,
      petId: json['petId'] as int,
      name: json['name'] as String,
    );

Map<String, dynamic> _$ToyToJson(Toy instance) => <String, dynamic>{
      'id': instance.id,
      'petId': instance.petId,
      'name': instance.name,
    };

ToyListResults _$ToyListResultsFromJson(Map<String, dynamic> json) =>
    ToyListResults(
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => Toy.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      nextLink: json['nextLink'] as String?,
    );

Map<String, dynamic> _$ToyListResultsToJson(ToyListResults instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
      'nextLink': instance.nextLink,
    };
