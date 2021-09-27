// ignore: file_names
import 'package:caminandum_web/controllers/home_page_controller.dart';
import 'package:caminandum_web/model/dummy_random_contacts_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserListView extends StatelessWidget {
  final HomePageController homePageController = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    return Expanded(
    //    flex: 3,
        child: Obx(() {
          return ListView.builder(
              itemCount: homePageController.contactList.length,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                        10.0,
                      ),
                      child: Image.network(
                        homePageController.contactList[index].phone,
                        fit: BoxFit.cover,
                        height: 80.0,
                        width: 50.0,
                      ),
                    ),
                  ),
                  title: Text('User $index'),
                );
              });
        }));
  }
}
