// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'toy_list_results.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ToyListResults _$ToyListResultsFromJson(Map<String, dynamic> json) {
  return _ToyListResults.fromJson(json);
}

/// @nodoc
mixin _$ToyListResults {
  List<Toy> get items => throw _privateConstructorUsedError;
  String get nextLink => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ToyListResultsCopyWith<ToyListResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToyListResultsCopyWith<$Res> {
  factory $ToyListResultsCopyWith(
          ToyListResults value, $Res Function(ToyListResults) then) =
      _$ToyListResultsCopyWithImpl<$Res, ToyListResults>;
  @useResult
  $Res call({List<Toy> items, String nextLink});
}

/// @nodoc
class _$ToyListResultsCopyWithImpl<$Res, $Val extends ToyListResults>
    implements $ToyListResultsCopyWith<$Res> {
  _$ToyListResultsCopyWithImpl(this._value, this._then);

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
              as List<Toy>,
      nextLink: null == nextLink
          ? _value.nextLink
          : nextLink // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ToyListResultsImplCopyWith<$Res>
    implements $ToyListResultsCopyWith<$Res> {
  factory _$$ToyListResultsImplCopyWith(_$ToyListResultsImpl value,
          $Res Function(_$ToyListResultsImpl) then) =
      __$$ToyListResultsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Toy> items, String nextLink});
}

/// @nodoc
class __$$ToyListResultsImplCopyWithImpl<$Res>
    extends _$ToyListResultsCopyWithImpl<$Res, _$ToyListResultsImpl>
    implements _$$ToyListResultsImplCopyWith<$Res> {
  __$$ToyListResultsImplCopyWithImpl(
      _$ToyListResultsImpl _value, $Res Function(_$ToyListResultsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? nextLink = null,
  }) {
    return _then(_$ToyListResultsImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Toy>,
      nextLink: null == nextLink
          ? _value.nextLink
          : nextLink // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ToyListResultsImpl implements _ToyListResults {
  const _$ToyListResultsImpl(
      {required final List<Toy> items, required this.nextLink})
      : _items = items;

  factory _$ToyListResultsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ToyListResultsImplFromJson(json);

  final List<Toy> _items;
  @override
  List<Toy> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final String nextLink;

  @override
  String toString() {
    return 'ToyListResults(items: $items, nextLink: $nextLink)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToyListResultsImpl &&
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
  _$$ToyListResultsImplCopyWith<_$ToyListResultsImpl> get copyWith =>
      __$$ToyListResultsImplCopyWithImpl<_$ToyListResultsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ToyListResultsImplToJson(
      this,
    );
  }
}

abstract class _ToyListResults implements ToyListResults {
  const factory _ToyListResults(
      {required final List<Toy> items,
      required final String nextLink}) = _$ToyListResultsImpl;

  factory _ToyListResults.fromJson(Map<String, dynamic> json) =
      _$ToyListResultsImpl.fromJson;

  @override
  List<Toy> get items;
  @override
  String get nextLink;
  @override
  @JsonKey(ignore: true)
  _$$ToyListResultsImplCopyWith<_$ToyListResultsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
