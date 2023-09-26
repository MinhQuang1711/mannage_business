import 'dart:io';
import 'dart:typed_data';

class BusinessAdapter {
  Future<Uint8List> mapFiletoByte(File file) async {
    final bytes = await file.readAsBytes();
    return bytes;
  }
}
