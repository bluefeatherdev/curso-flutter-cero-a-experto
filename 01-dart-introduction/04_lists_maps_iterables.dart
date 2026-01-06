// Dart Introduction - List, Maps & Iterables
void main() {
  final numbers = [1, 1, 2, 2, 3, 3, 4, 4, 5, 5];
  print('Original list: $numbers'); // [1, 1, 2, 2, 3, 3, 4, 4, 5, 5]
  print('Runtime type: ${numbers.runtimeType}'); // List<int>

  print('First (using index): ${numbers[0]}'); // 1
  print('First (using getter): ${numbers.first}'); // 1
  print('Last (using index): ${numbers[numbers.length - 1]}'); // 5
  print('Last (using getter): ${numbers.last}'); // 5
  print('Reversed getter: ${numbers.reversed}'); // 5

  final reversedNumbers = numbers.reversed;
  print(
    'Reversed Iterable: $reversedNumbers',
  ); // (5, 5, 4, 4, 3, 3, 2, 2, 1, 1)
  print(
    'Reversed List: ${reversedNumbers.toList()}',
  ); // [5, 5, 4, 4, 3, 3, 2, 2, 1, 1]
  print('Reversed Set: ${reversedNumbers.toSet()}'); // {5, 4, 3, 2, 1}

  final greaterThanTwo = numbers.where((int number) {
    return number > 2;
  });

  print('Greater than Two Iterable: $greaterThanTwo'); // (3, 3, 4, 4, 5, 5)
  print('Greater than Two Set: ${greaterThanTwo.toSet()}'); // {3, 4, 5}
}
