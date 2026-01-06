// Dart Introduction - Try, Catch, On, Finally
void main() async {
  print('Start of the program');

  try {
    final value = await httpGet('https://bluefeather.dev/');
    print('Success: $value'); // We have a value in the http request
  } on Exception catch (e) {
    print(
      'We have an Exception: $e',
    ); // We have an Exception: Exception: There are no parameters in the URL
  } catch (e) {
    print('We have an error: $e'); // We have an error: Error on http request
  } finally {
    print('End of try and catch');
  }

  print('End of program');
}

// Simulated HTTP GET request using Future
Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));

  throw Exception('There are no parameters in the URL');

  // throw 'Error on http request';

  // return 'We have a value in the http request';
}
