import 'package:get/get.dart';
import 'package:nfc_manager/nfc_manager.dart';

class Mainscreencontroller extends GetxController {
  var tagData = "".obs;
  void _startNFCReading() async {
    try {
      bool isAvailable = await NfcManager.instance.isAvailable();

      //We first check if NFC is available on the device.
      if (isAvailable) {
        //If NFC is available, start an NFC session and listen for NFC tags to be discovered.
        NfcManager.instance.startSession(
          onDiscovered: (NfcTag tag) async {
            // Process NFC tag, When an NFC tag is discovered, print its data to the console.
            print('NFC Tag Detected: ${tag.data}');
            tagData = tag.data as RxString;
          },
        );
      } else {
        print('NFC not available.');
      }
    } catch (e) {
      print('Error reading NFC: $e');
    }
  }
}
