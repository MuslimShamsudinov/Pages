import 'package:flutter/material.dart';

class SECONdPAGE extends StatefulWidget {
  const SECONdPAGE({super.key});

  @override
  State<SECONdPAGE> createState() => _SECONdPAGEState();
}

class _SECONdPAGEState extends State<SECONdPAGE> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        'jou',
        style: TextStyle(fontSize: 50, color: Colors.red),
      )),
    );
  }
}
