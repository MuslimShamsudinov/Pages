import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/test.dart';

class CunterAPP extends StatefulWidget {
  const CunterAPP({super.key});

  @override
  State<CunterAPP> createState() => _CunterAPPState();
}

class _CunterAPPState extends State<CunterAPP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0, backgroundColor: Colors.white, actions: [
        IconButton(
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => Home(),
              //   ),
              // );
            },
            icon: Icon(
              Icons.search_rounded,size: 30,
              color: Colors.black,
            )),
        IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Home(),
                ),
              );
            },
            icon: Icon(
              Icons.send,
              color: Colors.black,size: 25,
            )),
        // Icon(
        //   Icons.message_sharp,
        //   color: Colors.black,
        // ),
        SizedBox(
          width: 20,
        ),
      ]),
      body: Center(
        child: Text(
          'hi',
          style: TextStyle(fontSize: 50, color: Colors.red),
        ),
      ),
    );
  }
}
