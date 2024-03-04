import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for DefaultApi
void main() {
  final instance = Openapi().getDefaultApi();

  group(DefaultApi, () {
    //Future<ToyListResults> listPetToysResponseList(String petId, String nameFilter) async
    test('test listPetToysResponseList', () async {
      // TODO
    });

    //Future<Pet> petsCreate(Pet pet) async
    test('test petsCreate', () async {
      // TODO
    });

    // Delete a pet.
    //
    //Future petsDelete(int petId) async
    test('test petsDelete', () async {
      // TODO
    });

    // <blink>List pets.</blink>
    //
    //Future<PetListResults> petsList({ String nextLink }) async
    test('test petsList', () async {
      // TODO
    });

    // Returns a pet. Supports eTags.
    //
    //Future<Pet> petsRead(int petId) async
    test('test petsRead', () async {
      // TODO
    });

  });
}
