// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

part 'openapi.models.swagger.g.dart';

@JsonSerializable(explicitToJson: true)
class Error {
  const Error({
    required this.code,
    required this.message,
  });

  factory Error.fromJson(Map<String, dynamic> json) => _$ErrorFromJson(json);

  static const toJsonFactory = _$ErrorToJson;
  Map<String, dynamic> toJson() => _$ErrorToJson(this);

  @JsonKey(name: 'code')
  final int code;
  @JsonKey(name: 'message')
  final String message;
  static const fromJsonFactory = _$ErrorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is Error &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      runtimeType.hashCode;
}

extension $ErrorExtension on Error {
  Error copyWith({int? code, String? message}) {
    return Error(code: code ?? this.code, message: message ?? this.message);
  }

  Error copyWithWrapped({Wrapped<int>? code, Wrapped<String>? message}) {
    return Error(
        code: (code != null ? code.value : this.code),
        message: (message != null ? message.value : this.message));
  }
}

@JsonSerializable(explicitToJson: true)
class Pet {
  const Pet({
    required this.name,
    this.tag,
    required this.age,
  });

  factory Pet.fromJson(Map<String, dynamic> json) => _$PetFromJson(json);

  static const toJsonFactory = _$PetToJson;
  Map<String, dynamic> toJson() => _$PetToJson(this);

  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'tag')
  final String? tag;
  @JsonKey(name: 'age')
  final int age;
  static const fromJsonFactory = _$PetFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is Pet &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.tag, tag) ||
                const DeepCollectionEquality().equals(other.tag, tag)) &&
            (identical(other.age, age) ||
                const DeepCollectionEquality().equals(other.age, age)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(tag) ^
      const DeepCollectionEquality().hash(age) ^
      runtimeType.hashCode;
}

extension $PetExtension on Pet {
  Pet copyWith({String? name, String? tag, int? age}) {
    return Pet(
        name: name ?? this.name, tag: tag ?? this.tag, age: age ?? this.age);
  }

  Pet copyWithWrapped(
      {Wrapped<String>? name, Wrapped<String?>? tag, Wrapped<int>? age}) {
    return Pet(
        name: (name != null ? name.value : this.name),
        tag: (tag != null ? tag.value : this.tag),
        age: (age != null ? age.value : this.age));
  }
}

@JsonSerializable(explicitToJson: true)
class PetListResults {
  const PetListResults({
    required this.items,
    this.nextLink,
  });

  factory PetListResults.fromJson(Map<String, dynamic> json) =>
      _$PetListResultsFromJson(json);

  static const toJsonFactory = _$PetListResultsToJson;
  Map<String, dynamic> toJson() => _$PetListResultsToJson(this);

  @JsonKey(name: 'items', defaultValue: <Pet>[])
  final List<Pet> items;
  @JsonKey(name: 'nextLink')
  final String? nextLink;
  static const fromJsonFactory = _$PetListResultsFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PetListResults &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.nextLink, nextLink) ||
                const DeepCollectionEquality()
                    .equals(other.nextLink, nextLink)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(nextLink) ^
      runtimeType.hashCode;
}

extension $PetListResultsExtension on PetListResults {
  PetListResults copyWith({List<Pet>? items, String? nextLink}) {
    return PetListResults(
        items: items ?? this.items, nextLink: nextLink ?? this.nextLink);
  }

  PetListResults copyWithWrapped(
      {Wrapped<List<Pet>>? items, Wrapped<String?>? nextLink}) {
    return PetListResults(
        items: (items != null ? items.value : this.items),
        nextLink: (nextLink != null ? nextLink.value : this.nextLink));
  }
}

@JsonSerializable(explicitToJson: true)
class Toy {
  const Toy({
    required this.id,
    required this.petId,
    required this.name,
  });

  factory Toy.fromJson(Map<String, dynamic> json) => _$ToyFromJson(json);

  static const toJsonFactory = _$ToyToJson;
  Map<String, dynamic> toJson() => _$ToyToJson(this);

  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'petId')
  final int petId;
  @JsonKey(name: 'name')
  final String name;
  static const fromJsonFactory = _$ToyFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is Toy &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.petId, petId) ||
                const DeepCollectionEquality().equals(other.petId, petId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(petId) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $ToyExtension on Toy {
  Toy copyWith({int? id, int? petId, String? name}) {
    return Toy(
        id: id ?? this.id, petId: petId ?? this.petId, name: name ?? this.name);
  }

  Toy copyWithWrapped(
      {Wrapped<int>? id, Wrapped<int>? petId, Wrapped<String>? name}) {
    return Toy(
        id: (id != null ? id.value : this.id),
        petId: (petId != null ? petId.value : this.petId),
        name: (name != null ? name.value : this.name));
  }
}

@JsonSerializable(explicitToJson: true)
class ToyListResults {
  const ToyListResults({
    required this.items,
    this.nextLink,
  });

  factory ToyListResults.fromJson(Map<String, dynamic> json) =>
      _$ToyListResultsFromJson(json);

  static const toJsonFactory = _$ToyListResultsToJson;
  Map<String, dynamic> toJson() => _$ToyListResultsToJson(this);

  @JsonKey(name: 'items', defaultValue: <Toy>[])
  final List<Toy> items;
  @JsonKey(name: 'nextLink')
  final String? nextLink;
  static const fromJsonFactory = _$ToyListResultsFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ToyListResults &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.nextLink, nextLink) ||
                const DeepCollectionEquality()
                    .equals(other.nextLink, nextLink)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(nextLink) ^
      runtimeType.hashCode;
}

extension $ToyListResultsExtension on ToyListResults {
  ToyListResults copyWith({List<Toy>? items, String? nextLink}) {
    return ToyListResults(
        items: items ?? this.items, nextLink: nextLink ?? this.nextLink);
  }

  ToyListResults copyWithWrapped(
      {Wrapped<List<Toy>>? items, Wrapped<String?>? nextLink}) {
    return ToyListResults(
        items: (items != null ? items.value : this.items),
        nextLink: (nextLink != null ? nextLink.value : this.nextLink));
  }
}

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}

class Wrapped<T> {
  final T value;
  const Wrapped.value(this.value);
}
