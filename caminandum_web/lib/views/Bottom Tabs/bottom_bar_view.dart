import 'package:caminandum_web/constants/colors.dart';
import 'package:caminandum_web/constants/images.dart';
import 'package:caminandum_web/controllers/bottom_bar_view_controller.dart';
import 'package:caminandum_web/view/widgets/text_widget.dart';
import 'package:caminandum_web/views/ChatScreen/chat_detaill_screen.dart';
import 'package:caminandum_web/views/ChatScreen/chats_screen.dart';
import 'package:caminandum_web/views/HomePage/home_page.dart';
import 'package:caminandum_web/views/Profile/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomBarView extends StatefulWidget {
  const BottomBarView({Key? key}) : super(key: key);

  @override
  State<BottomBarView> createState() => _BottomBarViewState();
}

class _BottomBarViewState extends State<BottomBarView>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    tabController = TabController(length: 6, vsync: this);
  }



  @override
  void dispose() {
    // TODO: implement dispose
    tabController!.dispose();
    super.dispose();
  }

  int selectedIndex = 0;
  void onItemClicked(int index) {
    setState(() {
      selectedIndex = index;
      tabController!.index = selectedIndex;
    });
  }

  buildBottomNavigationMenu() {
    return  Container(
          decoration: const BoxDecoration(
              border: Border(top: BorderSide(color: Color(0xFFF55D32)))),
          height: 65.0,
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            showUnselectedLabels: false,
            showSelectedLabels: false,
            type: BottomNavigationBarType.fixed,
            iconSize: 30.0,
            onTap: onItemClicked,
            //landingPageController.changeTabIndex,
            currentIndex: selectedIndex,
            //landingPageController.tabIndex.value,
            // ignore: prefer_const_constructors
            selectedItemColor: Colors.black,
            unselectedItemColor: ColorPalette.colorOrange,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.perm_contact_cal,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.timer,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.mail,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: '',
              ),
            ],
            // items: [
            //   BottomNavigationBarItem(
            //     icon: Image.asset(
            //       landingPageController.tabIndex.value == 0
            //           ? Images.selectedHome
            //           : Images.unSelectedHome,
            //       height: 30.0,
            //       width: 30.0,
            //     ),
            //     // Icon(
            //     //   Icons.home,
            //     //   // size: 28.0,
            //     // ),
            //     label: '',
            //   ),
            //   BottomNavigationBarItem(
            //     icon: Image.asset(
            //       landingPageController.tabIndex.value == 1
            //           ? Images.selectedSearch
            //           : Images.unSelectedSearch,
            //       height: 30.0,
            //       width: 30.0,
            //     ),
            //     label: '',
            //   ),
            //   BottomNavigationBarItem(
            //     icon: Image.asset(
            //       landingPageController.tabIndex.value == 2
            //           ? Images.selectedHeart
            //           : Images.unSelectedHeart,
            //       height: 30.0,
            //       width: 30.0,
            //     ),
            //     label: '',
            //   ),
            //   BottomNavigationBarItem(
            //     icon: Image.asset(
            //       landingPageController.tabIndex.value == 3
            //           ? Images.selectedClock
            //           : Images.unSelectedClock,
            //       height: 30.0,
            //       width: 30.0,
            //     ),
            //     label: '',
            //   ),
            //   BottomNavigationBarItem(
            //     icon: Image.asset(
            //       landingPageController.tabIndex.value == 4
            //           ? Images.selectedMessage
            //           : Images.unSelectedMessage,
            //       height: 30.0,
            //       width: 30.0,
            //     ),
            //     label: '',
            //   ),
            //   BottomNavigationBarItem(
            //     icon: Image.asset(
            //       landingPageController.tabIndex.value == 5
            //           ? Images.selectedProfile
            //           : Images.unSelectedProfile,
            //       height: 30.0,
            //       width: 30.0,
            //     ),
            //     label: '',
            //     // backgroundColor: const Color(0xffED3238),
            //   ),
            // ],
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    // ignore: omit_local_variable_types

    return SafeArea(
      child: Scaffold(
          bottomNavigationBar: buildBottomNavigationMenu(),
          body:
              //Obx(() =>
              TabBarView(
                controller: tabController,
                  physics: NeverScrollableScrollPhysics(),
                  children: <Widget>[
                HomePage(),
                HomePage(),
                HomePage(),
                HomePage(),
                ChatsScreen(),
                ProfileView(),
              ])

          // IndexedStack(
          //   index: landingPageController.tabIndex.value,
          //   children: [
          //     HomePage(),
          //     HomePage(),
          //     HomePage(),
          //     HomePage(),
          //
          //     ///check rename to chatscreen
          //     ChatScreen(),
          //     ProfileView(),
          //   ],
          // )
          ),
      //)
    );
  }
}
