// Dart Introduction - Abstract Class:
void main() {
  final WindPlant windPlant = WindPlant(initialEnergy: 100);
  final NuclearPlant nuclearPlant = NuclearPlant(energyLeft: 1000);

  print('Wind: ${chargePhone(windPlant)}'); // Wind: 90.0
  print('Nuclear: ${chargePhone(nuclearPlant)}'); // Nuclear: 990.0
}

// An enum
enum PlantType { nuclear, wind, water }

// And abstract class
abstract class EnergyPlant {
  // Some class fields
  double energyLeft;
  final PlantType type; // nuclear, wind, water

  // A named constructor with required parameters
  EnergyPlant({required this.energyLeft, required this.type});

  // A void method
  void consumeEnergy(double amount);
}

// A child class
class WindPlant extends EnergyPlant {
  // A named constructor with initializer list
  WindPlant({required double initialEnergy})
    // Call super constructor
    : super(energyLeft: initialEnergy, type: PlantType.wind);

  // This class must override super abstract class methods
  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}

// This class implements EnergyPlant abstract class
class NuclearPlant implements EnergyPlant {
  // This class must override all abstract class fields
  @override
  double energyLeft;

  @override
  final PlantType type = PlantType.nuclear;

  // A named constructor with a required parameter
  NuclearPlant({required this.energyLeft});

  // This class must override abstract class methods
  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount * 0.5);
  }
}

// A function that receives either WindPlant or NuclearPlant objects
double chargePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) {
    throw Exception('Not enough energy');
  }

  return plant.energyLeft - 10;
}
