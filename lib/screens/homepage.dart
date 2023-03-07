import 'package:flutter/material.dart';

import '../reusables.dart';
import 'FillCylinder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              buttons(context, "Fill Cylinder", () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FillCylinder()));
              }),
            ],
          ),
        ),
      ),
    );
  }
}
