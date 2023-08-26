class Chatuser{
   String name;
  String messageText;
  String imageURl;
  String time;
  bool isMessageRead;
  Chatuser(
      {
      required this.name,
      required this.messageText,
      required this.imageURl,
      required this.isMessageRead,
      required this.time});
}
class ChatMessage {
  String messageContent;
  String messageType;
  ChatMessage({required this.messageContent, required this.messageType});
}