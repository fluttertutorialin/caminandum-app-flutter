import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserGrid extends StatelessWidget {
  final controller;

  const UserGrid({Key? key, this.controller}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(() => !controller.isLoading.value
        ? Container(
            child: Expanded(
              flex: 3,
              child: GridView.builder(
                  itemCount: controller.userList[0].profiles.length,
                  physics: const BouncingScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.9,
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
                                height: 130.0,
                                width: 150.0,
                                placeholder: AssetImage(
                                    'assets/images/profile_placeholder.png'),
                              )),
                          Expanded(
                            child: Container(
                              height: 20.0,
                              width: 150.0,
                              color: Colors.black,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
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

                    // Column(
                    //   children: [
                    //     Padding(
                    //       padding: const EdgeInsets.all(8.0),
                    //       child: ClipRRect(
                    //         borderRadius: BorderRadius.circular(
                    //           10.0,
                    //         ),
                    //         child: Image.asset(
                    //           'assets/images/Caminandum-logo.png',
                    //           fit: BoxFit.cover,
                    //           height: 150.0,
                    //           width: 150.0,
                    //         ),
                    //       ),
                    //     ),
                    //   ],
                    // );
                  }),
            ),
          )
        : Center(
            child: CircularProgressIndicator(),
          ));
  }
}
