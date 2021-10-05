// ignore: file_names
import 'package:caminandum_web/constants/images.dart';
import 'package:caminandum_web/controllers/home_page_controller.dart';
import 'package:caminandum_web/model/dummy_random_contacts_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserListView extends StatelessWidget {
  final controller;

  const UserListView({Key? key, this.controller}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(() => !controller.isLoading.value
        ? Expanded(
            //    flex: 3,
            child: ListView.builder(
                controller: controller.scrollcontroller,
                itemCount: controller.userList[0].profiles.length,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  final user = controller.userList[0].profiles[index];

                  return ListTile(
                    leading: Container(
                      height: 100.0,
                      width: 50.0,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                            10.0,
                          ),
                          child: FadeInImage(
                            image: NetworkImage(
                              'https://api.caminandum.com/' +
                                  user.avatar.toString(),
                            ),
                            fit: BoxFit.cover,
                            height: 80.0,
                            width: 50.0,
                            placeholder: AssetImage(
                                'assets/images/profile_placeholder.png'),
                          ),
                        ),
                      ),
                    ),
                    title: Text(user.firstName.toString()),
                  );
                }))
        : Center(
            child: CircularProgressIndicator(),
          ));
  }
}
