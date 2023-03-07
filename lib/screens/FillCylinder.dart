<<<<<<< HEAD
// ignore_for_file: file_names, duplicate_ignore

import 'package:flutter/material.dart';
=======
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
>>>>>>> 44c04cbffa00f3c3402cec750a529c7149a72b97

class FillCylinder extends StatefulWidget {
  const FillCylinder({super.key});

  @override
  State<FillCylinder> createState() => _FillCylinderState();
}

class _FillCylinderState extends State<FillCylinder> {
<<<<<<< HEAD
=======
  String getresult = "-1";

  List dtLst = [];

>>>>>>> 44c04cbffa00f3c3402cec750a529c7149a72b97
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fills Cylinder"),
      ),
      body: SingleChildScrollView(
<<<<<<< HEAD
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text("TAP TO SCAN"),
            ),
          ],
=======
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    //scanQRCode();
                  },
                  child: const Text("TAP TO SCAN")),
              const SizedBox(
                height: 30,
              ),
              const SizedBox(
                height: 30,
              ),
              ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: dtLst.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ListTile(
                          title: Text(dtLst[index]),
                          subtitle: Text(index.toString()),
                          tileColor: Colors.grey[350],
                        ),
                        SizedBox(
                          height: 30,
                        )
                      ],
                    );
                  })
            ],
          ),
>>>>>>> 44c04cbffa00f3c3402cec750a529c7149a72b97
        ),
      ),
    );
  }
<<<<<<< HEAD
=======

  // Future scanQRCode() async {
  //   try {
  //     FlutterBarcodeScanner.getBarcodeStreamReceiver(
  //             '#ff6666', 'Cancel', true, ScanMode.QR)!
  //         .listen((event) => setState(() {
  //               if (!mounted) return;
  //               if (!dtLst.contains(event)) {
  //                 dtLst.add(event);
  //               }
  //             }));

  //     if (!mounted) return;

  //     // setState(() {
  //     //   getresult = qr;
  //     //   dtLst.add(getresult);
  //     // });
  //   } on PlatformException {
  //     setState(() {
  //       getresult = 'Failed to scan QR Code.';
  //     });
  //   }
  // }

  // List getList() {
  //   return dtLst;
  // }
>>>>>>> 44c04cbffa00f3c3402cec750a529c7149a72b97
}
