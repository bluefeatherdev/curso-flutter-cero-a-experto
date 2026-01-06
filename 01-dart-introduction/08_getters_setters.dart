// Dart Introduction - Getter and Setters:
void main() {
  final Square square = Square(side: 5);
  print('Square area: ${square.area}'); // Square area: 25.0

  square.side = 10; // Setting new value: 10.0
  print('Square area: ${square.area}'); // Square area: 100.0
}

class Square {
  // A private parameter
  double _side; // area = side * side

  // A named constructor with a initializer list
  Square({required double side})
    : assert(side >= 0, 'side must be >= 0'),
      _side = side;

  // A getter
  double get area {
    return _side * _side;
  }

  // A setter
  set side(double value) {
    print('Setting new value: $value');
    if (value < 0) throw 'Value must be >= 0';
    _side = value;
  }

  // A method
  double calculateArea() {
    return _side * _side;
  }
}
