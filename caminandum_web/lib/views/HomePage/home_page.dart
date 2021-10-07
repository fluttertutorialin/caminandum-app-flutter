import 'package:caminandum_web/constants/images.dart';
import 'package:caminandum_web/controllers/home_page_controller.dart';
import 'package:caminandum_web/view/widgets/menuWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  // Future<DummyRandomContacts>? _dummyRandomContact;
  final homePageController = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Home"),
        leading: MenuWidget(),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: height * 0.1,
            color: const Color(0xFFE5E4E4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                  child: Obx(
                    () => Row(
                      children: [
                        Switch(
                          value: homePageController.statusVaccine.value,
                          onChanged: (val) {
                            homePageController.statusVaccine.value = val;
                          },
                          activeColor: Colors.black,
                          inactiveThumbColor: Colors.black,
                        ),
                        const Text(
                          'Vaccine',
                          maxLines: 1,
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Flexible(
                  child: Obx(
                    () => Row(
                      children: [
                        Switch(
                          value: homePageController.statusGroup.value,
                          onChanged: (val) {
                            homePageController.statusGroup.value = val;
                          },
                          activeColor: Colors.black,
                          inactiveThumbColor: Colors.black,
                        ),
                        const Text(
                          'Group',
                          maxLines: 1,
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Obx(
                  () => InkWell(
                    onTap: homePageController.onChangeViewToList,
                    child: Image.asset(
                      homePageController.isChangeViewToList.value
                          ? Images.selectedList
                          : Images.unSelectedList,
                      height: 30.0,
                      width: 30.0,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5.0,
                ),
                Obx(
                  () => InkWell(
                    onTap: homePageController.onChangeViewToGridView,
                    child: Image.asset(
                      homePageController.isChangeViewToGridView.value
                          ? Images.selected3Grid
                          : Images.unSelected3Grid,
                      height: 30.0,
                      width: 30.0,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5.0,
                ),
                Obx(
                  () => InkWell(
                    onTap: homePageController.onChangeViewToGrid,
                    child: Image.asset(
                      homePageController.isChangeViewToGrid.value
                          ? Images.selectedGrid
                          : Images.unSelectedGrid,
                      height: 30.0,
                      width: 30.0,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5.0,
                ),
              ],
            ),
          ),
          // _userListView()
          // Obx(
          //       () => homePageController.isChangeViewToList.value
          //       ? UserListView()
          //       : homePageController.isChangeViewToGrid.value
          //       ? UserGrid()
          //       : homePageController.isChangeViewToGridView.value
          //       ? UserGridView()
          //       : UserListView(),
          // ),
          // _userGridView3()
        ],
      ),
    );
  }
}
