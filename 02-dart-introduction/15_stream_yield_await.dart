// Dart Introduction - Stream, Yield, Await
void main() {
  // .listen() subscribes to the stream
  // and executes the callback
  // for each event emitted by the stream
  emitNumbers().listen((int value) {
    print('Stream value: $value');
  });
}

// Function that emits a stream of integers
Stream<int> emitNumbers() async* {
  final valuesToEmit = [1, 2, 3, 4, 5];

  for (int i in valuesToEmit) {
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }
}
