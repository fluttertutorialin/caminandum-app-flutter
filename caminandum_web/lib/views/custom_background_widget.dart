import 'package:caminandum_web/view/widgets/menuWidget.dart';
import 'package:caminandum_web/views/widgets/quarter_circle_painter/quarter_circle_painter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';

class CustomBackgroundWidget extends StatelessWidget {
  final Widget child;
  final Color? bgColor;
  CustomBackgroundWidget({
    Key? key,
    required this.child,
    this.bgColor,
  });
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SizedBox(
          height: constraints.maxHeight,
          width: constraints.maxWidth,
          child: SafeArea(
            top: false,
            child: Material(
              color: Colors.transparent,
              child: Stack(
                children: [
                  Positioned(
                    right: 0,
                    top: 0,
                    left: 0,
                    bottom: 0,
                    child: SizedBox(
                      child: ClipRect(
                        child: CustomPaint(
                          foregroundPainter: QuarterCirclePainter(
                            circleAlignment: CircleAlignment.topRight,
                            color: context.theme.primaryIconTheme.color!,
                          ),
                          child: SafeArea(
                            child: Scaffold(
                              backgroundColor: bgColor != null ? bgColor : null,
                              appBar: AppBar(
                                bottomOpacity: 0.0,
                                elevation: 0.0,
                                leading: MenuWidget(),
                              ),
                              body: child,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
