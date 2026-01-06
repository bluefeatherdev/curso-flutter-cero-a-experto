// Dart Introduction - Mixins (2022)
void main() {
  final Whale whale = Whale();
  whale.swim(); // I'm swimming!

  final Salmon salmon = Salmon();
  salmon.swim(); // I'm swimming!

  final Duck duck = Duck();
  duck.fly(); // I'm flying!
  duck.walk(); // I'm walking!
  duck.swim(); // I'm swimming!
}

// Abstract classes
abstract class Animal {}

abstract class Mammal extends Animal {}

abstract class Fish extends Animal {}

abstract class Bird extends Animal {}

// Mixin classes (2025)
mixin Flyer {
  void fly() => print("I'm flying!");
}

mixin Walker {
  void walk() => print("I'm walking!");
}

mixin Swimmer {
  void swim() => print("I'm swimming!");
}

// Concrete classes using abstract classes and mixins
class Whale extends Mammal with Swimmer {}

class Salmon extends Fish with Swimmer {}

class Duck extends Bird with Flyer, Walker, Swimmer {}
