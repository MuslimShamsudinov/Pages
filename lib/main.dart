import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/secondHome/HomePage.dart';
import 'package:flutter_application_1/views/page/pages_stages.dart';
import 'package:flutter_application_1/views/register/login%20up.dart';
import 'package:flutter_application_1/views/register/Welcome.dart';

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
