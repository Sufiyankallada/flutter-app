// ignore_for_file: file_names, duplicate_ignore

import 'package:flutter/material.dart';

class FillCylinder extends StatefulWidget {
  const FillCylinder({super.key});

  @override
  State<FillCylinder> createState() => _FillCylinderState();
}

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
            ElevatedButton(onPressed: () {}, child: const Text("TAP TO SCAN")),
          ],
        ),
      ),
    );
  }
}
