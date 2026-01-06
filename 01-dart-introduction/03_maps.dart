// Dart Introduction - Maps
void main() {
  final Map<String, dynamic> pokemon = {
    'name': 'Ditto',
    'hp': 100,
    'isAlive': true,
    'abilities': <String>['impostor'],
    'sprites': {1: 'ditto/front.png', 2: 'ditto/back.png'},
  };

  print(
    pokemon,
  ); // {name: Ditto, hp: 100, isAlive: true, abilities: [impostor], sprites: {1: ditto/front.png, 2: ditto/back.png}}
  print(pokemon.runtimeType); // _Map<String, dynamic>

  print('name: ${pokemon['name']}'); // name: Ditto
  print('isAlive: ${pokemon['isAlive']}'); // isAlive: true

  print('Back sprite: ${pokemon['sprites'][2]}'); // Back sprite: ditto/back.png
  print(
    'Front sprite: ${pokemon['sprites'][1]}',
  ); // Front sprite: ditto/front.png
}
