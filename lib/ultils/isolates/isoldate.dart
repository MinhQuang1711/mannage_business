import 'dart:isolate';

class BusinessIsolate {
  BusinessIsolate._();
  static var instance = BusinessIsolate._();

  /*
    // Still run in main isolate
    // Param taskRunner is new isolate
  */
  void createNewIsolate({
    required Function(SendPort) taskRunner,
    required Function(dynamic) onData,
  }) {
    var reciverPort = ReceivePort();
    Isolate.spawn(taskRunner, reciverPort.sendPort);

    // Listen data from new isolate
    reciverPort.listen(onData);
  }
}
