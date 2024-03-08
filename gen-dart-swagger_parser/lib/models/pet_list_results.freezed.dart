// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pet_list_results.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PetListResults _$PetListResultsFromJson(Map<String, dynamic> json) {
  return _PetListResults.fromJson(json);
}

/// @nodoc
mixin _$PetListResults {
  List<Pet> get items => throw _privateConstructorUsedError;
  String get nextLink => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PetListResultsCopyWith<PetListResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PetListResultsCopyWith<$Res> {
  factory $PetListResultsCopyWith(
          PetListResults value, $Res Function(PetListResults) then) =
      _$PetListResultsCopyWithImpl<$Res, PetListResults>;
  @useResult
  $Res call({List<Pet> items, String nextLink});
}

/// @nodoc
class _$PetListResultsCopyWithImpl<$Res, $Val extends PetListResults>
    implements $PetListResultsCopyWith<$Res> {
  _$PetListResultsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? nextLink = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Pet>,
      nextLink: null == nextLink
          ? _value.nextLink
          : nextLink // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PetListResultsImplCopyWith<$Res>
    implements $PetListResultsCopyWith<$Res> {
  factory _$$PetListResultsImplCopyWith(_$PetListResultsImpl value,
          $Res Function(_$PetListResultsImpl) then) =
      __$$PetListResultsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Pet> items, String nextLink});
}

/// @nodoc
class __$$PetListResultsImplCopyWithImpl<$Res>
    extends _$PetListResultsCopyWithImpl<$Res, _$PetListResultsImpl>
    implements _$$PetListResultsImplCopyWith<$Res> {
  __$$PetListResultsImplCopyWithImpl(
      _$PetListResultsImpl _value, $Res Function(_$PetListResultsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? nextLink = null,
  }) {
    return _then(_$PetListResultsImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Pet>,
      nextLink: null == nextLink
          ? _value.nextLink
          : nextLink // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PetListResultsImpl implements _PetListResults {
  const _$PetListResultsImpl(
      {required final List<Pet> items, required this.nextLink})
      : _items = items;

  factory _$PetListResultsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PetListResultsImplFromJson(json);

  final List<Pet> _items;
  @override
  List<Pet> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final String nextLink;

  @override
  String toString() {
    return 'PetListResults(items: $items, nextLink: $nextLink)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PetListResultsImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.nextLink, nextLink) ||
                other.nextLink == nextLink));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_items), nextLink);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PetListResultsImplCopyWith<_$PetListResultsImpl> get copyWith =>
      __$$PetListResultsImplCopyWithImpl<_$PetListResultsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PetListResultsImplToJson(
      this,
    );
  }
}

abstract class _PetListResults implements PetListResults {
  const factory _PetListResults(
      {required final List<Pet> items,
      required final String nextLink}) = _$PetListResultsImpl;

  factory _PetListResults.fromJson(Map<String, dynamic> json) =
      _$PetListResultsImpl.fromJson;

  @override
  List<Pet> get items;
  @override
  String get nextLink;
  @override
  @JsonKey(ignore: true)
  _$$PetListResultsImplCopyWith<_$PetListResultsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
