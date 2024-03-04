//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/toy.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'toy_list_results.g.dart';

/// ToyListResults
///
/// Properties:
/// * [items] 
/// * [nextLink] 
@BuiltValue()
abstract class ToyListResults implements Built<ToyListResults, ToyListResultsBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<Toy> get items;

  @BuiltValueField(wireName: r'nextLink')
  String? get nextLink;

  ToyListResults._();

  factory ToyListResults([void updates(ToyListResultsBuilder b)]) = _$ToyListResults;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ToyListResultsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ToyListResults> get serializer => _$ToyListResultsSerializer();
}

class _$ToyListResultsSerializer implements PrimitiveSerializer<ToyListResults> {
  @override
  final Iterable<Type> types = const [ToyListResults, _$ToyListResults];

  @override
  final String wireName = r'ToyListResults';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ToyListResults object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(Toy)]),
    );
    if (object.nextLink != null) {
      yield r'nextLink';
      yield serializers.serialize(
        object.nextLink,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ToyListResults object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ToyListResultsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Toy)]),
          ) as BuiltList<Toy>;
          result.items.replace(valueDes);
          break;
        case r'nextLink':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.nextLink = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ToyListResults deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ToyListResultsBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

