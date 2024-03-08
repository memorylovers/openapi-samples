// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'toy.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Toy _$ToyFromJson(Map<String, dynamic> json) {
  return _Toy.fromJson(json);
}

/// @nodoc
mixin _$Toy {
  int get id => throw _privateConstructorUsedError;
  int get petId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ToyCopyWith<Toy> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToyCopyWith<$Res> {
  factory $ToyCopyWith(Toy value, $Res Function(Toy) then) =
      _$ToyCopyWithImpl<$Res, Toy>;
  @useResult
  $Res call({int id, int petId, String name});
}

/// @nodoc
class _$ToyCopyWithImpl<$Res, $Val extends Toy> implements $ToyCopyWith<$Res> {
  _$ToyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? petId = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      petId: null == petId
          ? _value.petId
          : petId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ToyImplCopyWith<$Res> implements $ToyCopyWith<$Res> {
  factory _$$ToyImplCopyWith(_$ToyImpl value, $Res Function(_$ToyImpl) then) =
      __$$ToyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int petId, String name});
}

/// @nodoc
class __$$ToyImplCopyWithImpl<$Res> extends _$ToyCopyWithImpl<$Res, _$ToyImpl>
    implements _$$ToyImplCopyWith<$Res> {
  __$$ToyImplCopyWithImpl(_$ToyImpl _value, $Res Function(_$ToyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? petId = null,
    Object? name = null,
  }) {
    return _then(_$ToyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      petId: null == petId
          ? _value.petId
          : petId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ToyImpl implements _Toy {
  const _$ToyImpl({required this.id, required this.petId, required this.name});

  factory _$ToyImpl.fromJson(Map<String, dynamic> json) =>
      _$$ToyImplFromJson(json);

  @override
  final int id;
  @override
  final int petId;
  @override
  final String name;

  @override
  String toString() {
    return 'Toy(id: $id, petId: $petId, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.petId, petId) || other.petId == petId) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, petId, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToyImplCopyWith<_$ToyImpl> get copyWith =>
      __$$ToyImplCopyWithImpl<_$ToyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ToyImplToJson(
      this,
    );
  }
}

abstract class _Toy implements Toy {
  const factory _Toy(
      {required final int id,
      required final int petId,
      required final String name}) = _$ToyImpl;

  factory _Toy.fromJson(Map<String, dynamic> json) = _$ToyImpl.fromJson;

  @override
  int get id;
  @override
  int get petId;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$ToyImplCopyWith<_$ToyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
