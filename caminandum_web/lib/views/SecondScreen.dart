import 'package:caminandum_web/controllers/MainManuController.dart';
import 'package:caminandum_web/view/pages/menuScreen.dart';
import 'package:caminandum_web/views/ThirdScreen.dart';
import 'package:caminandum_web/views/custom_background_widget.dart';
import 'package:caminandum_web/views/widgets/widget_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';

class SecondScreen extends StatelessWidget {
  SecondScreen({Key? key}) : super(key: key);
  final MainMenuController controller = Get.put(MainMenuController());

  @override
  Widget build(BuildContext context) {
    return WidgetContainer(
      child: ZoomDrawer(
        style: DrawerStyle.Style1,
        angle: -10,
        borderRadius: 40,
        menuScreen: Builder(
          builder: (context) => MenuScreen(
            currentItem: controller.currentItem.value,
            onSelectedItem: (item) {
              print(item);
              controller.currentItem.value = item;
              ZoomDrawer.of(context)!.close();
            },
          ),
        ),
        mainScreen: CustomBackgroundWidget(
          child: Builder(builder: (context) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: SizedBox(),
                ),
                Expanded(
                  flex: 0,
                  child: Container(
                    child: Text(
                      'Sports Together',
                      textAlign: TextAlign.end,
                      style: context.textTheme.headline6,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Expanded(
                  flex: 6,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30.0,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25.0),
                      child: Image.asset(
                        "assets/images/stay_together.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Center(
                      child: Text(
                        "Connecting people for outdoor Sports",
                        textAlign: TextAlign.center,
                        style: context.theme.textTheme.subtitle1,
                      ),
                    )),
                Container(
                  // ignore: deprecated_member_use
                  child: FlatButton(
                    child: Text(
                      'Continue',
                      style: TextStyle(fontSize: 17.0, color: Colors.white),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    onPressed: () {
                      Get.to(() => ThirdScreen());
                    },
                    color: context.theme.buttonTheme.colorScheme!.background,
                    padding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 100),
                  ),
                ),
                Expanded(flex: 1, child: SizedBox())
              ],
            );
          }),
        ),
      ),
    );
  }
}
