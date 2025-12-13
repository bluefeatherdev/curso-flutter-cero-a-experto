// Dart Introduction - Futures
void main() {
  print('Start of the program');
  httpGet('https://bluefeather.dev/')
      // .then() handles the successful response
      .then((value) {
        print(value);
      })
      // .catchError() handles any error that may occur
      .catchError((error) {
        print('Error: $error');
      });
  print('End of program');
}

// Simulated HTTP GET request using Future
Future<String> httpGet(String url) {
  return Future.delayed(const Duration(seconds: 1), () {
    // throw 'Error on http request';

    return 'http request response';
  });
}
