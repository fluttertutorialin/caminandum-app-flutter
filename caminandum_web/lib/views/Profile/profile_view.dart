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

import 'package:caminandum_web/controllers/profile_view_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProfileViewController());

    return Scaffold(

      body:   TabBarView(
        controller: controller.tabController,
        children: [
          CarPage(),
          BikePage(),
        ],
      ),
    );
  }
}

class HomeController extends GetxController with SingleGetTickerProviderMixin {
  late TabController tabController;

  @override
  void onInit() {
    tabController = TabController(vsync: this, length: 2);
    super.onInit();
  }
}

class CarPage extends StatefulWidget {
  @override
  _CarPageState createState() => _CarPageState();
}

class _CarPageState extends State<CarPage> with AutomaticKeepAliveClientMixin {
  final controller = Get.put(CarPageController());

  @override
  Widget build(BuildContext context) {
    print('>>> Build Car Page');
    super.build(context);
    return Center(
      child: Obx(() => Text(controller.car.value)),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class CarPageController extends GetxController {
  final car = ''.obs;

  @override
  void onInit() {
    print('Call API Car'); // called only once
    car.value = 'Ferrari';
    super.onInit();
  }
}

class BikePage extends StatefulWidget {
  @override
  _BikePageState createState() => _BikePageState();
}

class _BikePageState extends State<BikePage>
    with AutomaticKeepAliveClientMixin {
  final controller = Get.put(BikePageController());

  @override
  Widget build(BuildContext context) {
    print('>>> Build Bike Page');
    super.build(context);
    return Center(
      child: Obx(() => Text(controller.bike.value)),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class BikePageController extends GetxController {
  final bike = ''.obs;

  @override
  void onInit() {
    print('Call API Bike'); // called only once
    bike.value = 'BMC';
    super.onInit();
  }
}
