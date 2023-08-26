import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/secondHome/HomePage.dart';
import 'package:flutter_application_1/views/SecondPage.dart';
import 'package:flutter_application_1/views/profille.dart/home%20profile.dart';

import 'package:flutter_application_1/views/second/SecondPage.dart';
import 'package:flutter_application_1/views/test/test3.dart';
import 'package:flutter_application_1/widjets/videoreels.dart';

class PagesWidgets extends StatefulWidget {
  const PagesWidgets({super.key});

  @override
  State<PagesWidgets> createState() => _PagesWidgetsState();
}

class _PagesWidgetsState extends State<PagesWidgets> {
  int _page = 0;
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  final _pegesWidgets = [
    CunterAPP(),
    SECONdPAGE(),
    // Home(),
// ConversationList(),

    Test3(),

    Instagram()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _pegesWidgets[_page],
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: _page,
        height: 60.0,
        items: [
          Icon(
            Icons.home,
            size: 30,
          ),
          Icon(
            Icons.search,
            size: 30,
          ),
          Icon(
            Icons.video_collection,
            size: 30,
          ),
          // Icon(
          //   Icons.my_library_music_outlined,
          //   size: 30,
          // ),
          Icon(
            Icons.perm_identity,
            size: 30,
          ),
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.deepPurple,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(seconds: 1),
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
      ),
    );
  }
}
