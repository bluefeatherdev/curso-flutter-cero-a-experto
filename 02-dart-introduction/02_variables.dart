// Dart Introduction - Variables
void main() {
  final String pokemon = 'Ditto';
  final int hp = 100;
  final bool isAlive = true;
  final List<String> abilities = ['impostor'];
  final sprites = <String>['ditto/front.png', 'ditto/back.png'];

  print("""
  $pokemon
  $hp
  $isAlive
  $abilities
  $sprites
  """);

  dynamic dynamicVariable = 'Hello';
  print(dynamicVariable); // Hello
  print(dynamicVariable.runtimeType); // String

  dynamicVariable = true;
  print(dynamicVariable); // true
  print(dynamicVariable.runtimeType); // bool

  dynamicVariable = [1, 2, 3, 4, 5];
  print(dynamicVariable); // [1, 2, 3, 4, 5]
  print(dynamicVariable.runtimeType); // List<int>

  dynamicVariable = {1, 2, 3, 4, 5};
  print(dynamicVariable); // {1, 2, 3, 4, 5}
  print(dynamicVariable.runtimeType); // _Set<int>

  dynamicVariable = {1: 'a', 2: 'b', 3: 'c'};
  print(dynamicVariable); // {1: 'a', 2: 'b', 3: 'c'}
  print(dynamicVariable.runtimeType); // _Map<int, String>

  dynamicVariable = () => true;
  print(dynamicVariable); // Closure: () => bool
  print(dynamicVariable.runtimeType); // () => bool

  dynamicVariable = null;
  print(dynamicVariable); // () => null
  print(dynamicVariable.runtimeType); // Null
}
