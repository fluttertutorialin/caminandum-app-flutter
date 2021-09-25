import 'package:caminandum_web/constants/colors.dart';
import 'package:caminandum_web/model/chat_model.dart';
import 'package:caminandum_web/views/widgets/chat_card.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
Future<ChatModel>? _chatModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(color: ColorPalette.colorDarkGrey,
          child:FutureBuilder<ChatModel>(
            future: _chatModel,
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return ListView.builder(
                  itemCount: 8,
                  itemBuilder: (context, index) {
                   // var movie = snapshot.data.results[index];
                    return ChatCard(
                      ///remove hardcoded url
                      avatarURL:
                      'https://logowik.com/content/uploads/images/flutter5786.jpg',
                      postURL:
                      'https://logowik.com/content/uploads/images/flutter5786.jpg',
                      location: 'Yaounde',
                      postUsername: 'Ipsum',
                    );
                  },
                );
              } else {
                print(snapshot);
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}


