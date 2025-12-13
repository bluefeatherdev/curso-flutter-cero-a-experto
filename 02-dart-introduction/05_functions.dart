// Dart Introduction - Function

void main() {
  print(greetEveryone()); // Hello everyone!
  print('Sum: ${addTwoNumbers(26, 27)}'); // Sum: 53
  print('Sum: ${addTwoNumbersOptional(26)}'); // Sum: 26
  print('Sum: ${addTwoNumbersOptional(26, 27)}'); // Sum: 53
  print(greetPerson(name: 'Jesús')); // Hello, Jesús!
  print(
    greetPerson(name: 'Jesús', message: 'Keep it up,'),
  ); // Keep it up, Jesús!
}

// An arrow function:
String greetEveryone() => 'Hello everyone!';

// An arrow function with parameters:
int addTwoNumbers(int a, int b) => a + b;

// A function with a optional parameter:
int addTwoNumbersOptional(int a, [int b = 0]) {
  // b ??= 0;
  return a + b;
}

// A function with named parameters and one required parameter:
String greetPerson({required String name, String message = 'Hello,'}) {
  return '$message $name!';
}
