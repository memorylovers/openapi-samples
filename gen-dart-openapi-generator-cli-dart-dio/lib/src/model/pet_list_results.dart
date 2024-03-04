//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/pet.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pet_list_results.g.dart';

/// PetListResults
///
/// Properties:
/// * [items] 
/// * [nextLink] 
@BuiltValue()
abstract class PetListResults implements Built<PetListResults, PetListResultsBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<Pet> get items;

  @BuiltValueField(wireName: r'nextLink')
  String? get nextLink;

  PetListResults._();

  factory PetListResults([void updates(PetListResultsBuilder b)]) = _$PetListResults;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PetListResultsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PetListResults> get serializer => _$PetListResultsSerializer();
}

class _$PetListResultsSerializer implements PrimitiveSerializer<PetListResults> {
  @override
  final Iterable<Type> types = const [PetListResults, _$PetListResults];

  @override
  final String wireName = r'PetListResults';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PetListResults object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(Pet)]),
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
    PetListResults object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PetListResultsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Pet)]),
          ) as BuiltList<Pet>;
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
  PetListResults deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PetListResultsBuilder();
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

