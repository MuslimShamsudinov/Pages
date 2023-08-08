import 'package:flutter/material.dart';
import 'package:flutter_application_1/HomePage.dart';
import 'package:flutter_application_1/pages.dart';

void main() {
  runApp(homepage());
}

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),

      highContrastDarkTheme: ThemeData.light(),
      // home: CunterAPP(),/
      home: PagesWidgets(),
    );



    
  }



}
