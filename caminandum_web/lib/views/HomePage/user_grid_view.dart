import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserGridView extends StatelessWidget {
  final controller;

  const UserGridView({Key? key, this.controller}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(() => !controller.isLoading.value
        ? Expanded(
            flex: 3,
            child: Container(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                  itemCount: controller.userList[0].profiles.length,
                  physics: const BouncingScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 0.5,
                    childAspectRatio: 0.68,
                  ),
                  itemBuilder: (context, index) {
                    final user = controller.userList[0].profiles[index];
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              topRight: Radius.circular(10.0),
                            ),
                            child: FadeInImage(
                              image: NetworkImage(
                                'https://api.caminandum.com' +
                                    user.avatar.toString(),
                              ),
                              fit: BoxFit.cover,
                              height: 110.0,
                              width: 150.0,
                              placeholder: AssetImage(
                                  'assets/images/profile_placeholder.png'),
                            ),
                            // child: Image.network(
                            //   'https://api.caminandum.com' +
                            //       user.avatar.toString(),
                            // fit: BoxFit.cover,
                            // height: 110.0,
                            // width: 150.0,
                            // ),
                          ),
                          Expanded(
                            child: Container(
                              height: 40.0,
                              width: 150.0,
                              color: Colors.black,
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Row(
                                  children: [
                                    Text(
                                      user.firstName.toString(),
                                      style: const TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    const Spacer(),
                                    const Icon(
                                      Icons.add,
                                      color: Colors.amberAccent,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            ),
          )
        : Center(
            child: CircularProgressIndicator(),
          ));
  }
}
