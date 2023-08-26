import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/chats/HomePage.dart';
import 'package:flutter_application_1/views/Home/chats.dart';
import 'package:flutter_application_1/models/chats/model/chat.dart';
import 'package:flutter_application_1/views/search/Search.dart';

import '../settings/second settings.dart';


class CunterAPP extends StatefulWidget {
  const CunterAPP({super.key});

  @override
  State<CunterAPP> createState() => _CunterAPPState();
}

class _CunterAPPState extends State<CunterAPP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
           drawer: Navbar(),
        appBar:
            AppBar(elevation: 0, backgroundColor: Colors.deepPurple, actions: [
          IconButton(
              onPressed: () {
                
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => Home(),
                //   ),
                // );
              },
              icon: IconButton(
                onPressed: () {
                  showSearch(context: context, delegate: customSearchDelegate());
                },
                icon: Icon(
                  Icons.search_rounded,
                  size: 30,
                  color: Colors.white,
                ),
              )),
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
                Icons.live_tv_sharp,
                size: 30,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>Home(),
                  ),
                );
              },
              icon: Icon(
                Icons.send,
                color: Colors.white,
                size: 25,
              )),
          // Icon(
          //   Icons.message_sharp,
          //   color: Colors.black,
          // ),
          SizedBox(
            width: 20,
          ),
        ]),
        body: Container(
            // child: Image.network('', loadingBuilder: ) )
            // body: Center(
            //   child: Column(
            //     children: [
            //       GridView.count(
            //         scrollDirection: Axis.vertical,
            //         shrinkWrap: true,
            //         primary: false,
            //         padding: const EdgeInsets.all(10),
            //         crossAxisSpacing: 3,
            //         mainAxisSpacing: 3,
            //         crossAxisCount: 3,
            //         children: <Widget>[
            //           Container(
            //             height: 180,
            //             padding: EdgeInsets.all(8),
            //             color: Colors.teal[100],
            //             child: Text(
            //               "He'd have you all unravel at the",
            //             ),
            //           ),
            //         ],
            //       )
            //       // Container(
            //       //
            //       // decoration: BoxDecoration(
            //       //  color: Colors.white,
            //       // borderRadius: BorderRadius.circular(20)
            //       // ),
            //       //
            //       // height: 550,
            //       // width: 450,
            //       //
            //       // child: Center(child: Text('Hello')),
            //       // ),
            //     ],
            //   ),
            ));
  }
}
