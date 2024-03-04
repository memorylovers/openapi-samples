//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Pet {
  /// Returns a new [Pet] instance.
  Pet({
    required this.name,
    this.tag,
    required this.age,
  });

  String name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tag;

  /// Minimum value: 0
  /// Maximum value: 20
  int age;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Pet &&
    other.name == name &&
    other.tag == tag &&
    other.age == age;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (tag == null ? 0 : tag!.hashCode) +
    (age.hashCode);

  @override
  String toString() => 'Pet[name=$name, tag=$tag, age=$age]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
    if (this.tag != null) {
      json[r'tag'] = this.tag;
    } else {
      json[r'tag'] = null;
    }
      json[r'age'] = this.age;
    return json;
  }

  /// Returns a new [Pet] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Pet? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Pet[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Pet[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Pet(
        name: mapValueOfType<String>(json, r'name')!,
        tag: mapValueOfType<String>(json, r'tag'),
        age: mapValueOfType<int>(json, r'age')!,
      );
    }
    return null;
  }

  static List<Pet> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Pet>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Pet.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Pet> mapFromJson(dynamic json) {
    final map = <String, Pet>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Pet.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Pet-objects as value to a dart map
  static Map<String, List<Pet>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Pet>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Pet.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'age',
  };
}

