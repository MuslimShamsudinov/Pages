import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class CunterAPP extends StatefulWidget {
  const CunterAPP({super.key});

  @override
  State<CunterAPP> createState() => _CunterAPPState();
}

class _CunterAPPState extends State<CunterAPP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        'hi',
        style: TextStyle(fontSize: 50, color: Colors.red),
      )),
    );
  }
}
