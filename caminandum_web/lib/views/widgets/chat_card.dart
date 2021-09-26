import 'package:caminandum_web/constants/styles.dart';
import 'package:flutter/material.dart';

class ChatCard extends StatelessWidget {
  final String? username;
  final String? lastMessage;

  final String? avatarURL;
  ChatCard({this.username, this.avatarURL, this.lastMessage});

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    // final user = Provider.of<UserProvider>(context, listen: false);
    //final PostModel postData = InheritedPostModel.of(context).postData;
    return Container(
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.white),
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Row(mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(5),
            child: CircleAvatar(
              radius: 35,
              backgroundImage: NetworkImage(
                avatarURL!,
              ),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                username!,textAlign: TextAlign.left,
                style: kChatUsernameStyle,
              ),
              Text(lastMessage!, textAlign: TextAlign.left,style: kLastChatMessageStyle)
            ],
          ),
        ],
      ),
    );
  }
}
