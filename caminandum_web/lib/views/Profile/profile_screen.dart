import 'package:caminandum_web/constants/colors.dart';
import 'package:caminandum_web/constants/themes.dart';
import 'package:caminandum_web/controllers/profile_view_controller.dart';
import 'package:caminandum_web/view/widgets/menuWidget.dart';
import 'package:caminandum_web/views/Profile/model/profile_model.dart';
import 'package:caminandum_web/views/Profile/profile_tabs/personal_view.dart';
import 'package:caminandum_web/views/Profile/profile_tabs/photos_tab.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  @override
  State<ProfileScreen> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfileScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabControllerNested;
  final profileViewController = Get.put(ProfileViewController());

  int selectedIndex = 0;
  @override
  void initState() {
    super.initState();
    _tabControllerNested = TabController(
      length: ProfileModel.items.length,
      vsync: this,
    );
  }

  void onItemClicked(int index) {
    setState(() {
      selectedIndex = index;
      _tabControllerNested!.index = selectedIndex;
    });
  }

  @override
  void dispose() {
    _tabControllerNested!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
        shadowColor: Colors.transparent,
        leading: MenuWidget(),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 65,
            child: Stack(
              children: [
                Positioned.fill(
                  bottom: 5,
                  child: Container(
                    padding: EdgeInsets.all(0),
                    margin: EdgeInsets.all(0),
                    color: Themes().tabAppBar.backgroundColor(),
                  ),
                ),
                Positioned.fill(
                  top: 0,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: TabBar(
                    physics: AlwaysScrollableScrollPhysics(
                      parent: BouncingScrollPhysics(),
                    ),
                    onTap: (value) {
                      onItemClicked(value);
                    },
                    controller: _tabControllerNested,
                    indicatorColor:
                        context.theme.buttonTheme.colorScheme!.onPrimary,
                    labelPadding: EdgeInsets.all(0),
                    padding: EdgeInsets.all(0),
                    indicatorWeight: 5,
                    isScrollable: true,
                    tabs: ProfileModel.items.map((item) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Tab(
                          iconMargin: EdgeInsets.all(0),
                          icon: Image(
                            image: AssetImage(
                              item.imageName,
                            ),
                          ),
                          text: item.label,
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabControllerNested,
              children: <Widget>[
                PersonalView(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.blueGrey[300],
                  ),
                ),
                // PhotosTab(),
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
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.blueGrey[300],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
