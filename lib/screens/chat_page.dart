import 'package:chat_app_with_api/Widget/chat_buble.dart';
import 'package:chat_app_with_api/constans.dart';
import 'package:chat_app_with_api/models/message.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  static String id = 'ChatPage';
  TextEditingController controller = TextEditingController();
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  CollectionReference messages =
      FirebaseFirestore.instance.collection(kMessagesCollection);
  ChatPage({super.key});
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<QuerySnapshot>(
      future: messages.get(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<Message> messagesList = [];
          for (int i = 0; i < snapshot.data!.docs.length; i++) {
            messagesList.add(Message.fromJason(snapshot.data!.docs[i]));
          }
          print(snapshot.data!.docs[0]['message']);
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              automaticallyImplyLeading: false,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    kLogo,
                    height: 50,
                  ),
                  Text(
                    'scholarchat',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              backgroundColor: kPrimaryColor,
            ),
            body: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return ChatBubles();
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    controller: controller,
                    onSubmitted: (data) {
                      messages.add(
                        {
                          'message': data,
                        },
                      );
                      controller.clear();
                    },
                    decoration: InputDecoration(
                      hintText: 'Send Message',
                      // suffix: Icon(
                      //   Icons.emoji_emotions,
                      //   color: kPrimaryColor,
                      // ),
                      suffixIcon: Icon(
                        Icons.send,
                        color: kPrimaryColor,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: kPrimaryColor),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(color: kPrimaryColor),
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        } else {
          return Text('Loading...');
        }
      },
    );
  }
}
