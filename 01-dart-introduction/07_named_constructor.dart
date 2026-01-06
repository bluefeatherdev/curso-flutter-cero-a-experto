// Dart Introduction - Named Constructor

void main() {
  final Map<String, dynamic> rawJson = {
    'name': 'Link',
    'power': 'Triforce',
    'isAlive': true,
  };

  final Hero link = Hero.fromJson(rawJson);

  // final Hero link = Hero(isAlive: true, name: 'Link', power: 'Triforce');

  print(link); // Link - Triforce
  print(link.name); // Link
  print(link.power); // Triforce
  print(link.runtimeType); // Hero
}

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({required this.name, required this.power, required this.isAlive});

  // Named constructor
  Hero.fromJson(Map<String, dynamic> json)
    : name = json['name'] ?? 'No name found',
      power = json['power'] ?? 'No power found',
      isAlive = json['isAlive'] ?? 'No isAlive found';

  @override
  String toString() {
    return '$name, $power, isAlive: ${isAlive ? 'Yes!' : 'No'}';
  }
}
