import 'package:breaking_bad_app/data/api/characters_api.dart';
import 'package:breaking_bad_app/data/models/characters.dart';

class CharactersRepo {
  final CharactersApi charactersApi;

  CharactersRepo(this.charactersApi);

  Future<List<Character>> getAllCharacters() async {
    final characters = await charactersApi.getAllCharacters();
    return characters
        .map((character) => Character.fromJson(character))
        .toList();
  }
}
