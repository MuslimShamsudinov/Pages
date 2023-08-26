

import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/second/SecondPage.dart';
import 'package:flutter_application_1/models/chats/model/chat.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: content(),
    );
  }

  Widget content() {
 

    List<Chatuser> chatUsers = [
      
      Chatuser(
          name: "Janibek",
          messageText: "Awesome Setup",
          imageURl: "assets/images/M.jpeg",
          time: "Ysterday"),
      Chatuser(
          name: "Muslim",
          messageText: "Welcome!",
          imageURl: "assets/images/mus.jpg",
          time: "Now"),
      Chatuser(
          name: "Rayana",
          messageText: "All the best !",
          imageURl: "assets/images/r.jpeg",
          time: "31 jun"),
      Chatuser(
          name: "Bilol",
          messageText: "Let's catch up soon !",
          imageURl: "assets/images/bilol.jpeg",
          time: "29 August"),
      Chatuser(
          name: "Muhamadaziz",
          messageText: "Howe are you ?",
          imageURl: "assets/images/b.jpeg",
          time: "20 Dec"),
      Chatuser(
          name: "Bilol",
          messageText: "Thank you it's awesom",
          imageURl: "assets/images/M.jpeg",
          time: "1 Dec"),
    ];
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "World Chats",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding:
                        EdgeInsets.only(left: 8, right: 8, top: 2, bottom: 2),
                    child: Row(
                      children: [
                        Icon(
                          Icons.abc,
                          color: Colors.black,
                          size: 20,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          "Add New",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16,
              top: 16,
              right: 16,
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search...",
                helperStyle: TextStyle(color: Colors.grey.shade600),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey.shade600,
                  size: 20,
                ),
                filled: true,
                fillColor: Colors.grey.shade100,
                contentPadding: EdgeInsets.all(8),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.grey.shade100),
                ),
              ),
            ),
          ),
          ListView.builder(
            itemCount: chatUsers.length,
            shrinkWrap: true,
            padding: EdgeInsets.only(top: 16),
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: ((context, index) {
              return Container(
                color: Colors.white,
                child: ConversationList(
                  name: chatUsers[index].name,
                  messageText: chatUsers[index].messageText,
                  imageURl: chatUsers[index].imageURl,
                  isMessageRead: (index == 0 || index == 3) ? true : false,
                  time: chatUsers[index].time,
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
