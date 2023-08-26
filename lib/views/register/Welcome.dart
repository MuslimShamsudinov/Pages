import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/register/login%20up.dart';
import 'package:flutter_application_1/views/register/sign%20up.dart';

class REGISTER2 extends StatefulWidget {
  const REGISTER2({super.key});

  @override
  State<REGISTER2> createState() => _REGISTER2State();
}

class _REGISTER2State extends State<REGISTER2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Center(
                child: Text(
                  '𝙒𝙚𝙡𝙘𝙤𝙢𝙚 𝙩𝙤 𝙒𝙤𝙧𝙡𝙙 𝘼𝙥𝙥',
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              height: 70,
            ),
            //  Container(
            //   child: (Image.network(

            //     'https://static.vecteezy.com/system/resources/previews/018/930/692/original/instagram-logo-instagram-icon-transparent-free-png.png',
            //          alignment: Alignment.centerRight,
            //     width: 100,
            //     height: 100,

            //     // alignment: Alignment.centerRight
            //   )),
            // ),
            Container(
              // decoration: BoxDecoration(
              //   image: DecorationImage(
              //     image: AssetImage("assets/images/road.jpeg"),
              //     fit: BoxFit. cover,
              //     // colorFilter:ColorFilter.matrix(34)
              //     // ColorFilter.mode(Colors.transparent.withOpacity()),
              //   ),
              // ),
              child: Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ));
                  },
                  
                  child: Container(
                    height: 60,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.deepPurpleAccent,
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: Text(
                        'ʟᴏɢ ɪɴ',
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => LoginPage2())));
              },
              child: Container(
                height: 60,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent,
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                  child: Text(
                    'sɪɢɴ ᴜᴘ',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
