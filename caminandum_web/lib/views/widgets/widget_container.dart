import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class WidgetContainer extends StatelessWidget {
  final Widget child;
  WidgetContainer({Key? key, required this.child});
  @override
  Widget build(BuildContext context) {
    if (kIsWeb)
      return LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            color: Colors.white,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                child: child,
              ),
            ),
          );
        },
      );
    return child;
  }
}
