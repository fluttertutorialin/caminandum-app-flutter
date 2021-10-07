import 'package:caminandum_web/constants/colors.dart';
import 'package:caminandum_web/controllers/conversation_controller.dart';
import 'package:caminandum_web/controllers/theme_controller.dart';
import 'package:caminandum_web/model/chat_model.dart';
import 'package:caminandum_web/view/widgets/menuWidget.dart';
import 'package:caminandum_web/views/widgets/AppbarWidget.dart';
import 'package:caminandum_web/views/widgets/chat_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({Key? key}) : super(key: key);

  @override
  _ChatsScreenState createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  final ConversationController controller = Get.put(ConversationController());

  ///temporary chat dummy data pending API
  List<ChatModel> dummyData = [
    new ChatModel(
        senderId: "Pawan Kumar",
        text: "Hey Flutter, You are so amazing !",
        updatedAt: "15:30",
        id: "https://c1.wallpaperflare.com/preview/835/832/858/man-face-human-portrait.jpg"),
    new ChatModel(
        senderId: "Harvey Spectre",
        text: "Hey I have installed Caminandum!",
        updatedAt: "20:45",
        id: "https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
    new ChatModel(
        senderId: "Mike Ross",
        text: "Wassup !",
        updatedAt: "5:00",
        id: "https://images.pexels.com/photos/1300402/pexels-photo-1300402.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
    new ChatModel(
        senderId: "Rachel",
        text: "I'm good!",
        updatedAt: "10:30",
        id: "https://images.pexels.com/photos/3916455/pexels-photo-3916455.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
    new ChatModel(
        senderId: "Barry Allen",
        text: "I'm the fastest man alive!",
        updatedAt: "12:30",
        id: "https://images.pexels.com/photos/3768163/pexels-photo-3768163.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
    new ChatModel(
        senderId: "Joe West",
        text: "Hey Flutter, You are so cool !",
        updatedAt: "15:30",
        id: "https://images.pexels.com/photos/3155588/pexels-photo-3155588.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
    new ChatModel(
        senderId: "Rachel",
        text: "I'm good!",
        updatedAt: "10:30",
        id: "https://images.pexels.com/photos/3768163/pexels-photo-3768163.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
    new ChatModel(
        senderId: "Barry Allen",
        text: "I'm the fastest man alive!",
        updatedAt: "12:30",
        id: "https://images.pexels.com/photos/3155588/pexels-photo-3155588.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
    new ChatModel(
        senderId: "Joe West",
        text: "Hey Flutter, You are so cool !",
        updatedAt: "15:30",
        id: "https://images.pexels.com/photos/3155588/pexels-photo-3155588.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
  ];

  Future<ChatModel>? _chatModel;
  ThemeController _themeController = Get.find<ThemeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('Chats'),
          leading: MenuWidget(),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  controller.getConversation();
                },
                icon: Icon(
                  Icons.search,
                  color: context.theme.primaryIconTheme.color,
                ))
          ]),
      body: Container(
        padding: EdgeInsets.only(top: 5),
        color:  _themeController.isDark() ?
        context.theme.appBarTheme.backgroundColor : ColorPalette.colorDarkGrey,
        child: FutureBuilder<ChatModel>(
          future: _chatModel,
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return ListView.builder(
                itemCount: dummyData.length,
                itemBuilder: (context, index) {
                  // var movie = snapshot.data.results[index];
                  return ChatCard(
                    avatarURL: dummyData[index].id,
                    lastMessage: dummyData[index].text,
                    firstName: dummyData[index].senderId,
                  );
                },
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
