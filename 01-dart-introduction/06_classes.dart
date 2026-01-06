// Dart Introduction - Classes

void main() {
  final Hero link = Hero(name: 'Link', power: 'Triforce');

  // final Hero link = Hero('Link', 'Triforce');

  print(link); // Link - Triforce
  print(link.name); // Link
  print(link.power); // Triforce
}

class Hero {
  String name;
  String power;

  Hero({required this.name, this.power = 'Without a power'});

  // Hero(String name, String power) : name = name, power = power;

  @override
  String toString() {
    return '$name - $power';
  }
}
