// Dart Introduction - Streams
void main() {
  // .listen() subscribes to the stream
  // and executes the callback
  // for each event emitted by the stream
  emitNumbers().listen((event) {
    print('Stream event: $event');
  });
}

// Function that emits a stream of integers
Stream<int> emitNumbers() {
  return Stream.periodic(const Duration(seconds: 1), (computationCount) {
    print('From Stream.periodic: $computationCount');
    return computationCount;
  }).take(5);
}
