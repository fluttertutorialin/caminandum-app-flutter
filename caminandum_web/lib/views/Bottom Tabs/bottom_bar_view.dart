import 'package:caminandum_web/constants/images.dart';
import 'package:caminandum_web/controllers/bottom_bar_view_controller.dart';
import 'package:caminandum_web/view/widgets/text_widget.dart';
import 'package:caminandum_web/views/ChatScreen/chat_screen.dart';
import 'package:caminandum_web/views/HomePage/home_page.dart';
import 'package:caminandum_web/views/Profile/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomBarView extends StatelessWidget {
  const BottomBarView({Key? key}) : super(key: key);

  // ignore: always_declare_return_types
  appBar(context, landingPageController) {
    return Obx(
      () => ListTile(
        leading: const Icon(
          Icons.list,
          color: Color(0xFFF55D32),
          size: 30.0,
        ),
        subtitle: landingPageController.tabIndex.value == 0
            ? const TextWidget(
                label: 'Home',
                align: TextAlign.center,
                color: Colors.black,
                size: 22.0,
                weight: FontWeight.bold,
              )
            : landingPageController.tabIndex.value == 1
                ? const TextWidget(
                    label: 'Search',
                    align: TextAlign.center,
                    color: Colors.black,
                    size: 22.0,
                    weight: FontWeight.bold,
                  )
                : landingPageController.tabIndex.value == 2
                    ? const TextWidget(
                        label: 'Favourites',
                        align: TextAlign.center,
                        color: Colors.black,
                        size: 22.0,
                        weight: FontWeight.bold,
                      )
                    : landingPageController.tabIndex.value == 3
                        ? const TextWidget(
                            label: 'Events',
                            align: TextAlign.center,
                            color: Colors.black,
                            size: 22.0,
                            weight: FontWeight.bold,
                          )
                        : landingPageController.tabIndex.value == 4
                            ? const TextWidget(
                                label: 'Chat',
                                align: TextAlign.left,
                                color: Colors.black,
                                size: 22.0,
                                weight: FontWeight.bold,
                              )
                            : const TextWidget(
                                label: 'Profile',
                                align: TextAlign.center,
                                color: Colors.black,
                                size: 22.0,
                                weight: FontWeight.bold,
                              ),
      ),
    );
  }

  // ignore: always_declare_return_types
  buildBottomNavigationMenu(context, landingPageController) {
    return Obx(() => Container(
          decoration: const BoxDecoration(
              border: Border(top: BorderSide(color: Color(0xFFF55D32)))),
          height: 65.0,
          child: BottomNavigationBar(
            showUnselectedLabels: false,
            showSelectedLabels: false,
            iconSize: 28.0,
            onTap: landingPageController.changeTabIndex,
            currentIndex: landingPageController.tabIndex.value,
            // ignore: prefer_const_constructors
            unselectedItemColor: Colors.black,
            selectedItemColor: const Color(0xFFF55D32),

            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  landingPageController.tabIndex.value == 0
                      ? Images.selectedHome
                      : Images.unSelectedHome,
                  height: 30.0,
                  width: 30.0,
                ),
                // Icon(
                //   Icons.home,
                //   // size: 28.0,
                // ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  landingPageController.tabIndex.value == 1
                      ? Images.selectedSearch
                      : Images.unSelectedSearch,
                  height: 30.0,
                  width: 30.0,
                ),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  landingPageController.tabIndex.value == 2
                      ? Images.selectedHeart
                      : Images.unSelectedHeart,
                  height: 30.0,
                  width: 30.0,
                ),
                label: 'Favourites',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  landingPageController.tabIndex.value == 3
                      ? Images.selectedClock
                      : Images.unSelectedClock,
                  height: 30.0,
                  width: 30.0,
                ),
                label: 'Events',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  landingPageController.tabIndex.value == 4
                      ? Images.selectedMessage
                      : Images.unSelectedMessage,
                  height: 30.0,
                  width: 30.0,
                ),
                label: 'Message',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  landingPageController.tabIndex.value == 5
                      ? Images.selectedProfile
                      : Images.unSelectedProfile,
                  height: 30.0,
                  width: 30.0,
                ),
                label: 'Profile',
                // backgroundColor: const Color(0xffED3238),
              ),
            ],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    // ignore: omit_local_variable_types
    final BottomBarViewController landingPageController =
        Get.put(BottomBarViewController(), permanent: false);
    return SafeArea(
        child: Scaffold(
      appBar: PreferredSize(
          // ignore: prefer_const_constructors
          preferredSize: Size.fromHeight(70.0),
          child: appBar(context, landingPageController)),
      bottomNavigationBar:
          buildBottomNavigationMenu(context, landingPageController),
      body: Obx(() => IndexedStack(
            index: landingPageController.tabIndex.value,
            children: [
              HomePage(),
              HomePage(),
              HomePage(),
              HomePage(),
              ChatScreen(),
              ProfileView(),

            ],
          )),
    ));
  }
}
