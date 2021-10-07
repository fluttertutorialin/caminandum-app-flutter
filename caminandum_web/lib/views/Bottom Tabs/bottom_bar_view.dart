import 'package:caminandum_web/constants/colors.dart';
import 'package:caminandum_web/constants/images.dart';
import 'package:caminandum_web/controllers/bottom_bar_view_controller.dart';
import 'package:caminandum_web/view/widgets/text_widget.dart';
import 'package:caminandum_web/views/ChatScreen/chat_detaill_screen.dart';
import 'package:caminandum_web/views/ChatScreen/chats_screen.dart';
import 'package:caminandum_web/views/HomePage/home_page.dart';
import 'package:caminandum_web/views/Profile/profile_view.dart';
import 'package:caminandum_web/views/contacts_page/contacts_page.dart';
import 'package:caminandum_web/views/contacts_page/notification_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomBarView extends StatefulWidget {
  const BottomBarView({Key? key}) : super(key: key);

  @override
  State<BottomBarView> createState() => _BottomBarViewState();
}

class _BottomBarViewState extends State<BottomBarView>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    _tabController = TabController(length: 6, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController!.dispose();
    super.dispose();
  }

  int selectedIndex = 0;
  void onItemClicked(int index) {
    setState(() {
      selectedIndex = index;
      _tabController!.index = selectedIndex;
    });
  }

  buildBottomNavigationMenu() {
    return BottomNavigationBar(
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
          icon: Icon(Icons.connect_without_contact),
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
                  controller: _tabController,
                  physics: NeverScrollableScrollPhysics(),
                  children: <Widget>[
                HomePage(),
                HomePage(),

                HomePage(),
                HomePage(),
                ChatsScreen(),
                // NotificationView(),
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
