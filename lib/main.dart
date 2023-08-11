import 'package:flutter/material.dart';
import 'package:flutter_application_1/HomePage.dart';
import 'package:flutter_application_1/pages.dart';
import 'package:flutter_application_1/register/Register.dart';
import 'package:flutter_application_1/register/Rgister2.dart';

void main() {
  runApp(homepage());
}

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fluejthfu',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple
      ),
      debugShowCheckedModeBanner: false,
      // darkTheme: ThemeData.dark(),
      

      // highContrastDarkTheme: ThemeData.light(),
      // home: CunterAPP(),/
      home: REGISTER2(),
    );



    
  }



}
