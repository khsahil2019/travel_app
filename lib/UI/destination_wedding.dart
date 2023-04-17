import 'package:flutter/material.dart';
import 'dart:developer';

class DestinationWedding extends StatefulWidget {
  const DestinationWedding() : super();

  @override
  State<DestinationWedding> createState() => _DestinationWeddingState();
}

class _DestinationWeddingState extends State<DestinationWedding> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    double width = MediaQuery.of(context).size.width - 40;
    return Scaffold(
        // backgroundColor: const Color(0xFFEEE6EE),
        body: Stack(children: [
      Container(
          margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: ListView(children: [
            Column(
              children: [Text("Not Linked")],
            )
          ])),
    ]));
  }
}
