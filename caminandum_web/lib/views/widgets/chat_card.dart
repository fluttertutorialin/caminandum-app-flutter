import 'package:flutter/material.dart';

class ChatCard extends StatelessWidget {
  final String? postUsername;
  final String? location;
  final String? postURL;
  final String? avatarURL;
  ChatCard({this.postUsername, this.avatarURL, this.location, this.postURL});

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    // final user = Provider.of<UserProvider>(context, listen: false);
    //final PostModel postData = InheritedPostModel.of(context).postData;
    return Container(height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.white),
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        children: <Widget>[
          Container(
            // height: 30,
            margin: EdgeInsets.only(right: 4),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                avatarURL!,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                postUsername!,
              ),
              Text(
                location!,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
