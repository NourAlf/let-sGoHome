import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:url_launcher/url_launcher.dart';

class ScanQR extends StatefulWidget {
  const ScanQR({Key? key}) : super(key: key);

  @override
  State<ScanQR> createState() => _ScanQRState();
}

class _ScanQRState extends State<ScanQR> {
  String _scanResult = "";
  bool _isScanning = false;

  Future<void> scanCode() async {
    String qr;
    try {
      qr = await FlutterBarcodeScanner.scanBarcode(
        "#ff6666",
        "cancel",
        true,
        ScanMode.QR,
      );
    } on PlatformException {
      qr = "Failed to scan the QR code";
    }
    setState(() {
      _scanResult = qr;
      _isScanning = false;
    });

    if (_scanResult.isNotEmpty) {
      showUrlAlertDialog();
    }
  }

  void showUrlAlertDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Open URL'),
          content: Text('Do you want to open the scanned URL in Google?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                openUrlInGoogle();
              },
              child: const Text('Open'),
            ),
          ],
        );
      },
    );
  }

  void openUrlInGoogle() async {
    final url = _scanResult;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xFF5C955D),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0),
                  ),
                ),
              ),
              Positioned(
                top: 20,
                left: 20,
                child: GestureDetector(
                  onTap: () {
                    if (!_isScanning) {
                      setState(() {
                        _isScanning = true;
                      });
                      scanCode();
                    }
                  },
                  child: const Icon(
                    Icons.qr_code,
                    size: 32,
                  ),
                ),
              ),
              Positioned(
                top: 20,
                right: 20,
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  // Add your content for the small container here
                ),
              ),
              Positioned(
                top: 130,
                left: 27,
                child: const Text(
                  "Scan the QR code",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                top: 170,
                left: 27,
                child: const Text(
                  "You can add a student after scanning the QR \n code on the fences ",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),
          Center(
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(const Radius.circular(24)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _isScanning
                      ? const CircularProgressIndicator()
                      : const Icon(
                    Icons.qr_code_scanner,
                    size: 80,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    _scanResult.isNotEmpty ? "Scanned QR Code" : "Scan the QR",
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}