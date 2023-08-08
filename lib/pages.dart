import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/HomePage.dart';
import 'package:flutter_application_1/Profile.dart';
import 'package:flutter_application_1/SecondPage.dart';

import 'package:flutter_application_1/test.dart';
import 'package:flutter_application_1/test2.dart';
import 'package:flutter_application_1/test3.dart';
import 'package:flutter_application_1/videoreels.dart';

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
    Reels(),
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
          Icon(
            Icons.my_library_music_outlined,
            size: 30,
          ),
          Icon(
            Icons.perm_identity,
            size: 30,
          ),
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.red,
        backgroundColor: Colors.black,
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
