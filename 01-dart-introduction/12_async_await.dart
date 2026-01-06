// Dart Introduction - Async and Await
void main() async {
  print('Start of the program');

  try {
    final value = await httpGet('https://bluefeather.dev/');
    print(value); // We have a value in the http request
  } catch (e) {
    print('We have an error: $e'); // We have an error: Error on http request
  }

  print('End of program');
}

// Simulated HTTP GET request using Future
Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));

  // throw 'Error on http request';

  return 'We have a value in the http request';
}
