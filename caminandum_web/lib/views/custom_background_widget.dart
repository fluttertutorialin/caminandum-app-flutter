import 'package:caminandum_web/controllers/theme_controller.dart';
import 'package:caminandum_web/views/widgets/quarter_circle_painter/quarter_circle_painter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';

class CustomBackgroundWidget extends StatelessWidget {
  final Widget child;
  final Color? bgColor;
  final bool childOnTap;
  CustomBackgroundWidget({
    Key? key,
    required this.child,
    this.bgColor,
    this.childOnTap = false,
  });
  @override
  Widget build(BuildContext context) {
    ThemeController _themeController = Get.find<ThemeController>();
    return LayoutBuilder(
      builder: (context, constraints) {
        return SizedBox(
          height: constraints.maxHeight,
          width: constraints.maxWidth,
          child: SafeArea(
            top: false,
            child: Material(
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
                          child: childOnTap
                              ? SizedBox()
                              : SafeArea(
                                  child: Scaffold(
                                    backgroundColor:
                                        bgColor != null ? bgColor : null,
                                    appBar: AppBar(
                                      backgroundColor: Colors.transparent,
                                      bottomOpacity: 0.0,
                                      elevation: 0.0,
                                      leading: IconButton(
                                        onPressed: () =>
                                            ZoomDrawer.of(context)!.toggle(),
                                        icon: Icon(
                                          Icons.notes,
                                          color: context
                                              .theme.primaryIconTheme.color,
                                        ),
                                      ),
                                    ),
                                    body: child,
                                  ),
                                ),
                        ),
                      ),
                    ),
                  ),
                  if (childOnTap && _themeController.isDark())
                    Positioned.fill(
                      child: ClipRect(
                        child: CustomPaint(
                          foregroundPainter: QuarterCirclePainter(
                            circleAlignment: CircleAlignment.topRight,
                            color: context.theme.primaryIconTheme.color!,
                          ),
                          child: SafeArea(
                            top: true,
                            child: Scaffold(
                              appBar: AppBar(
                                bottomOpacity: 0.0,
                                elevation: 0.0,
                                leading: IconButton(
                                  onPressed: () =>
                                      ZoomDrawer.of(context)!.toggle(),
                                  icon: Icon(
                                    Icons.notes,
                                    color: context.theme.primaryIconTheme.color,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  if (childOnTap && _themeController.isDark())
                    Positioned.fill(
                      top: 85,
                      child: SafeArea(
                        child: child,
                      ),
                    ),
                  if (childOnTap && !_themeController.isDark())
                    SafeArea(
                      child: Scaffold(
                        appBar: AppBar(
                          backgroundColor: Colors.transparent,
                          bottomOpacity: 0.0,
                          elevation: 0.0,
                          leading: IconButton(
                            onPressed: () => ZoomDrawer.of(context)!.toggle(),
                            icon: Icon(
                              Icons.notes,
                              color: context.theme.primaryIconTheme.color,
                            ),
                          ),
                        ),
                        body: child,
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
