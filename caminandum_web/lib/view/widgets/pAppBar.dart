import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/view/widgets/menuWidget.dart';
import '/controllers/radioController.dart';

class PAppBarScreen extends StatefulWidget implements PreferredSizeWidget {
  @override
  _PAppBarScreenState createState() => _PAppBarScreenState();

  @override
  Size get preferredSize => const Size.fromHeight(60);
}

class _PAppBarScreenState extends State<PAppBarScreen> {
  RadioController _radioController = Get.find<RadioController>();

  @override
  Widget build(BuildContext context) {
    var textColor = _radioController.textColor;
    return AppBar(
      leading: MenuWidget(),
      // backgroundColor: Color(0x44000000),
      backgroundColor: Colors.white.withOpacity(0.1),
      elevation: 0,
      title: Text(
        "caminandum Pedometer",
        style: TextStyle(
          color: textColor,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 5, bottom: 5, top: 2),
          child: Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color(0XFFBE0C1C),
                  blurRadius: 5,
                ),
              ],
              color: Colors.transparent,
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/caminandum-logo.png',
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ],
    );
  }
}


// return Container(
//       decoration: BoxDecoration(color: Colors.transparent),
//       child: Padding(
//         padding: const EdgeInsets.only(
//           left: 10,
//           right: 10,
//         ),
//         child: Row(
//           children: [
//             MenuWidget(),
//             Spacer(),
//             Center(
//               child: Text(
//                 "caminandu Pedometer",
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   color: textColor,
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//             Spacer(),
//             Padding(
//               padding: const EdgeInsets.only(right: 5, bottom: 5, top: 2),
//               child: Container(
//                 height: 50,
//                 width: 50,
//                 decoration: BoxDecoration(
//                   boxShadow: [
//                     BoxShadow(
//                       color: Color(0XFFBE0C1C),
//                       blurRadius: 5,
//                     ),
//                   ],
//                   shape: BoxShape.circle,
//                   image: DecorationImage(
//                     image: AssetImage(
//                       'assets/images/caminandum-logo.png',
//                     ),
//                     fit: BoxFit.fill,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );