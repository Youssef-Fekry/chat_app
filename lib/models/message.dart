import 'package:chat_app_with_api/constans.dart';

class Message {
  final String message;

  Message(this.message);
  factory Message.fromJason(jasonData) {
    return Message(jasonData['message']);
  }
}
