import 'package:caminandum_web/views/custom_background_widget.dart';
import 'package:caminandum_web/views/widgets/OpenMenuScreen.dart';
import 'package:caminandum_web/views/widgets/widget_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'LoginSignupOptionsScreen.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WidgetContainer(
      child: OpenMenuScreen(
        child: CustomBackgroundWidget(
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex: 4,
                    child: SizedBox(),
                  ),
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Welcome to caminandum',
                        textAlign: TextAlign.center,
                        // overflow: TextOverflow.ellipsis,
                        style: context.textTheme.headline6,
                      ),
                    ),
                  ),
                  if (!kIsWeb)
                    Row(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          child: Text(
                            'We are a market place dedicated to'
                            ' connecting people who want to do'
                            ' outdoor sports through an app'
                            ' that also offers services for the purchase'
                            ' of activities ,both sports and adventure',
                            textAlign: TextAlign.center,
                            maxLines: 6,
                            style: context.theme.textTheme.subtitle1,
                          ),
                        )
                      ],
                    ),
                  if (kIsWeb)
                    Column(children: [
                      Text(
                        'We are a market place dedicated to'
                        ' connecting people who want to do'
                        ' outdoor sports through an app'
                        ' that also offers services for the purchase'
                        ' of activities ,both sports and adventure',
                        textAlign: TextAlign.center,
                        maxLines: 3,
                        style: context.theme.textTheme.subtitle1,
                      ),
                    ]),
                  Expanded(
                    flex: 5,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 25, vertical: 20.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(25.0),
                              child:
                                  Image.asset("assets/images/Rectangle83.png"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Container(
                        child: Text(
                          "Connecting people for outdoor Sports",
                          textAlign: TextAlign.center,
                          style: context.theme.textTheme.subtitle1,
                        ),
                      )),
                  Container(
                    child: FlatButton(
                      child: Text(
                        'Continue',
                        style: TextStyle(fontSize: 17.0, color: Colors.white),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      onPressed: () {
                        Get.to(() => LoginSignupOptionsScreen());
                      },
                      color: Color(0xFFF55D32),
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 100),
                    ),
                  ),
                  Expanded(flex: 1, child: SizedBox())
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
