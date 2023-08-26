import 'package:flutter/material.dart';

class ConversationList extends StatefulWidget {
  String name;
  String messageText;
  String imageURl;
  String time;
  bool isMessageRead;
  ConversationList(
      {super.key,
      required this.name,
      required this.messageText,
      required this.imageURl,
      required this.isMessageRead,
      required this.time});

  @override
  State<ConversationList> createState() => _ConversationListState();
}

class _ConversationListState extends State<ConversationList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 16,
        right: 16,
        top: 10,
        bottom: 10,
      ),
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(widget.imageURl),
                  maxRadius: 30,
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Container(
                    color: Colors.transparent,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.name,
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          widget.messageText,
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey.shade600,
                              fontWeight: widget.isMessageRead
                                  ? FontWeight.bold
                                  : FontWeight.normal),
                        ),
                      ],
                    ),
                  ),
                ),
                Text(
                  widget.time,
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: widget.isMessageRead
                          ? FontWeight.bold
                          : FontWeight.normal),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


class Chatuser {
  String name;
  String messageText;
  String imageURl;
  String time;
  Chatuser(
    
      {required this.name,
      required this.messageText,
      required this.imageURl,
      required this.time});
}