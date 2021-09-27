import 'package:caminandum_web/constants/colors.dart';
import 'package:caminandum_web/constants/styles.dart';
import 'package:caminandum_web/view/widgets/menuWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GlobalAppBar extends StatelessWidget {
  final Widget? leftWidget;
  final String? title;
  final Widget? rightWidget;

  GlobalAppBar({this.leftWidget, this.title, this.rightWidget});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          leftWidget ?? Container(),
          Text(
            title!,
            style: kChatUsernameStyle.copyWith(
                color: ColorPalette.colorOrange,
                fontWeight: FontWeight.bold,
                fontSize: 18),
          ),
          rightWidget ?? Container()
        ],
      ),
    );
  }
}

// class AppbarWidget extends StatelessWidget implements PreferredSizeWidget {
//   const AppbarWidget({Key? key}) : super(key: key);
// @override
// Size get preferredSize => Size.fromHeight(60.0);
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       backgroundColor:  Colors.black,
//       leading: MenuWidget(),
//       title: Text(
//         'caminandum',
//         style: TextStyle(color: Colors.white),
//       ),
//       actions: [
//         Padding(
//           padding: const EdgeInsets.only(right: 5, bottom: 5, top: 2),
//           child: Container(
//             height: 70,
//             width: 70,
//             decoration: BoxDecoration(
//               boxShadow: [
//                 BoxShadow(
//                   color: Color(0XFFBE0C1C),
//                   blurRadius: 5,
//                 ),
//               ],
//               shape: BoxShape.circle,
//               image: DecorationImage(
//                 image: AssetImage(
//                   'assets/images/Caminandum-logo.png',
//                 ),
//                 fit: BoxFit.fill,
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
