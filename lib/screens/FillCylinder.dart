// ignore_for_file: file_names, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class FillCylinder extends StatefulWidget {
  const FillCylinder({super.key});

  @override
  State<FillCylinder> createState() => _FillCylinderState();
}

String getresult = "-1";

List barcodeList = [];

class _FillCylinderState extends State<FillCylinder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fills Cylinder"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ElevatedButton(
              onPressed: () {
                scanQRCode();
              },
              child: const Text("TAP TO SCAN"),
            ),
            const SizedBox(
              height: 30,
            ),
            const SizedBox(
              height: 30,
            ),
            ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: barcodeList.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        title: Text(barcodeList[index]),
                        subtitle: Text(index.toString()),
                        tileColor: Colors.grey[350],
                      ),
                      const SizedBox(
                        height: 30,
                      )
                    ],
                  );
                })
          ],
        ),
      ),
    );
  }

  Future scanQRCode() async {
    try {
      FlutterBarcodeScanner.getBarcodeStreamReceiver(
              '#ff6666', 'Cancel', true, ScanMode.QR)!
          .listen((event) => setState(() {
                if (!mounted) return;
                if (!barcodeList.contains(event)) {
                  barcodeList.add(event);
                }
              }));

      if (!mounted) return;

      // setState(() {
      //   getresult = qr;
      //   dtLst.add(getresult);
      // });
    } on PlatformException {
      setState(() {
        getresult = 'Failed to scan QR Code.';
      });
    }
  }
}
