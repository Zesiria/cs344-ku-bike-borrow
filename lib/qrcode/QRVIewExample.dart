import 'dart:developer';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ku_bike_borrow_project/api/ApiService.dart';
import 'package:ku_bike_borrow_project/homepage.dart';
import 'package:ku_bike_borrow_project/login.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

import '../navbar.dart';

class QRViewExample extends StatefulWidget {
  final dynamic user;
  const QRViewExample({Key? key, @required this.user}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _QRViewExampleState();
}

class _QRViewExampleState extends State<QRViewExample> {
  Barcode? result;
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    }
    controller!.resumeCamera();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoaderOverlay(
        child: Column(
          children: <Widget>[
            Expanded(flex: 4, child: _buildQrView(context)),
            Expanded(
              flex: 1,
              child: FittedBox(
                fit: BoxFit.contain,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    if (result != null)
                      Text(
                          'Barcode Type: ${describeEnum(result!.format)}   Data: ${result!.code}')
                    else
                      const Text('Scan a code'),
                  ],
                ),
              ),
            )
          ],
        ),
      )
    );
  }

  Widget _buildQrView(BuildContext context) {
    var scanArea = (MediaQuery.of(context).size.width < 400 ||
        MediaQuery.of(context).size.height < 400)
        ? 150.0
        : 300.0;
    return QRView(
      key: qrKey,
      onQRViewCreated: _onQRViewCreated,
      overlay: QrScannerOverlayShape(
          borderColor: Colors.red,
          borderRadius: 10,
          borderLength: 30,
          borderWidth: 10,
          cutOutSize: scanArea),
      onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
        _qrCodeRetrieve().then((result) {
          showDialog(
           context: context,
           builder: (BuildContext context) {
             return AlertDialog(
              title: const Text('Result'),
              content: Text(result),
              actions: <Widget>[
                ElevatedButton(onPressed: () async{
                  final newUserData = await ApiService.fetchData(widget.user['token']);
                  _goToHomepage(newUserData['data']);
                }, child: const Text("ยืนยัน"))
              ]
             );
           });
        });
      });
    });
  }

  void _goToHomepage(final user){
    Navigator.push(
     context,
     MaterialPageRoute(builder: (context) => NavBar(user: user)));
  }
  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    log('${DateTime.now().toIso8601String()}_onPermissionSet $p');
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('no Permission')),
      );
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  Future<String> _qrCodeRetrieve() async {
    controller?.pauseCamera();
    dynamic response;
    if (result != null) {
      if (widget.user['lend_status'] == false) {
        response =
        await ApiService.lend(result!.code.toString(), widget.user['username']);
      }
      else if (widget.user['lend_status'] == true) {
        response = await ApiService.returnBike(
            result!.code.toString(), widget.user['username']);
      }
    }
    return response['message'];
  }
}