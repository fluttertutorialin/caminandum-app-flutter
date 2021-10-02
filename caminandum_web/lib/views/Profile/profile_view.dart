// import 'package:caminandum_web/controllers/profile_view_controller.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class ProfileView extends StatelessWidget {
//   ProfileView({Key? key}) : super(key: key);

//   // ignore: avoid_field_initializers_in_const_classes
//   final profileViewController = Get.put(ProfileViewController());

//   @override
//   Widget build(BuildContext context) {
//     var height = MediaQuery.of(context).size.height;
//     var width = MediaQuery.of(context).size.width;
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           bottom: TabBar(
//             controller: profileViewController.tabController,
//             tabs: profileViewController.myTabs,
//           ),
//         ),
//         body: Column(
//           children: [
//             Obx(
//               () => TabBarView(
//                 controller: profileViewController.tabController,
//                 children: profileViewController.myTabs.map((Tab tab) {
//                   // ignore: omit_local_variable_types
//                   final String label = tab.text!.toLowerCase();
//                   return Center(
//                     child: Text(
//                       'This is the $label tab',
//                       style: const TextStyle(fontSize: 36),
//                     ),
//                   );
//                 }).toList(),
//               ),
//             ),
//             Container(
//               height: height * 0.1,
//               width: width,
//               color: const Color(0xFFE5E4E4),
//               // child: Row(
//               //   children: [
//               //     IconButton(
//               //       onPressed: () {},
//               //       icon: Column(
//               //         children: [
//               //           const Icon(
//               //             Icons.person,
//               //           ),
//               //           const Text(
//               //             'Personal',
//               //           )
//               //         ],
//               //       ),
//               //     ),
//               //     IconButton(
//               //       onPressed: () {},
//               //       icon: Column(
//               //         children: [
//               //           const Icon(
//               //             Icons.person,
//               //           ),
//               //           const Text(
//               //             'Personal',
//               //           )
//               //         ],
//               //       ),
//               //     ),
//               //     IconButton(
//               //       onPressed: () {},
//               //       icon: Column(
//               //         children: [
//               //           const Icon(
//               //             Icons.person,
//               //           ),
//               //           const Text(
//               //             'Personal',
//               //           )
//               //         ],
//               //       ),
//               //     ),
//               //     IconButton(
//               //       onPressed: () {},
//               //       icon: Column(
//               //         children: [
//               //           const Icon(
//               //             Icons.person,
//               //           ),
//               //           const Text(
//               //             'Personal',
//               //           )
//               //         ],
//               //       ),
//               //     ),
//               //     IconButton(
//               //       onPressed: () {},
//               //       icon: Column(
//               //         children: [
//               //           const Icon(
//               //             Icons.person,
//               //           ),
//               //           const Text(
//               //             'Personal',
//               //           )
//               //         ],
//               //       ),
//               //     )
//               //   ],
//               // ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:caminandum_web/constants/colors.dart';
import 'package:caminandum_web/controllers/profile_view_controller.dart';
import 'package:caminandum_web/views/Profile/profile_tabs/personal_tab.dart';
import 'package:caminandum_web/views/Profile/profile_tabs/photos_tab.dart';
import 'package:caminandum_web/views/widgets/AppbarWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);
  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView>
    with SingleTickerProviderStateMixin {
  TabController? _tabControllerNested;
  int selectedIndex = 0;
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    _tabControllerNested = TabController(length: 5, vsync: this);
  }

  void onItemClicked(int index) {
    setState(() {
      selectedIndex = index;
      _tabControllerNested!.index = selectedIndex;
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabControllerNested!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final profileViewController = Get.put(ProfileViewController());

    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          child: GlobalAppBar(
            leftWidget: Container(),
            title: 'Profile',
          ),
        ),
        Container(
          color: ColorPalette.colorLightGrey,
          child: TabBar(
            controller: _tabControllerNested,
            indicatorColor: ColorPalette.colorOrange,
            labelColor: ColorPalette.colorOrange,
            indicatorWeight: 5,
            unselectedLabelColor: ColorPalette.colorBlack,
            isScrollable: false,
            tabs: <Widget>[
              Tab(
                text: "Personal",
                icon: Image.asset('assets/profile_icons/personal.png'),
              ),
              Tab(
                text: "Photos",
                icon: Image.asset('assets/profile_icons/photos.png'),
              ),
              Tab(
                text: "Sports",
                icon: Image.asset('assets/profile_icons/sports.png'),
              ),
              Tab(
                text: "Calendar",
                icon: Image.asset('assets/profile_icons/calendar.png'),
              ),
              Tab(
                text: "Preference",
                icon: Image.asset('assets/profile_icons/preferences.png'),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(left: 5, right: 5),
            child: TabBarView(
              controller: _tabControllerNested,
              children: <Widget>[
                PersonalTab(),
                PhotosTab(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.blueGrey[300],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.blueGrey[300],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.blueGrey[300],
                  ),
                ),
              ],
            ),
          ),
        ),
        // Container(
        //   padding: EdgeInsets.symmetric(vertical: 13),
        //   child: GlobalAppBar(
        //     leftWidget: Container(),
        //     title: 'Profile',
        //     rightWidget: Container(),
        //   ),
        // ),
        // BottomNavigationBar(
        //   backgroundColor: Colors.white,
        //   showUnselectedLabels: false,
        //   showSelectedLabels: false,
        //   type: BottomNavigationBarType.fixed,
        //   iconSize: 30.0,
        //   onTap: onItemClicked,
        //   //landingPageController.changeTabIndex,
        //   currentIndex: selectedIndex,
        //   //landingPageController.tabIndex.value,
        //   // ignore: prefer_const_constructors
        //   selectedItemColor: Colors.black,
        //   unselectedItemColor: ColorPalette.colorOrange,
        //   items: [
        //     BottomNavigationBarItem(
        //       icon: Icon(
        //         Icons.person,
        //       ),
        //       label: 'Personal',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(
        //         Icons.photo_library,
        //       ),
        //       label: 'Photos',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(
        //         Icons.timer,
        //       ),
        //       label: 'Sports',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(
        //         Icons.mail,
        //       ),
        //       label: 'Calendar',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(
        //         Icons.person,
        //       ),
        //       label: 'Preferences',
        //     ),
        //   ],
        // ),
        //
        // TabBarView(
        //   physics: NeverScrollableScrollPhysics(),
        //   controller: _tabController,
        //   children: [
        //     PersonalTab(),
        //     PhotosTab(),
        //     PhotosTab(),
        //     PhotosTab(),
        //     PhotosTab(),
        //   ],
        // ),
      ],
    );
  }
}
