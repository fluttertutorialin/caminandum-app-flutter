// ignore: file_names
import 'package:flutter/material.dart';

class UserListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: ListView.builder(
          itemCount: 30,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return ListTile(
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                  child: Image.asset(
                    'assets/images/Caminandum-logo.png',
                    fit: BoxFit.cover,
                    height: 80.0,
                    width: 50.0,
                  ),
                ),
              ),
              title: Text('User $index'),
            );
          }),
    );
  }
}
