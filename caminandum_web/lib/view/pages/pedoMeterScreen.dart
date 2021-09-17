import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import '/controllers/radioController.dart';
import '/view/widgets/menuWidget.dart';
import '../widgets/p_appBar.dart';

class PedoMeterScreen extends StatefulWidget {
  const PedoMeterScreen({Key? key}) : super(key: key);

  @override
  _PedoMeterScreenState createState() => _PedoMeterScreenState();
}

class _PedoMeterScreenState extends State<PedoMeterScreen> {
  // RadioController _radioController = Get.find<RadioController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PAppBarScreen(),
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0XFFF7AC93),
                  Color(0xFFE26F03),
                  Color(0XFFFF6A88),
                  Color(0XFFFF6C87),
                ],
              ),
            ),
          ),
          Positioned(
            top: -270,
            left: -110,
            child: Container(
              height: (MediaQuery.of(context).size.height) * 0.8,
              width: (MediaQuery.of(context).size.width) * 0.8,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withOpacity(0.1),
              ),
            ),
          ),
          Positioned(
            bottom: -300,
            right: -110,
            child: Container(
              height: (MediaQuery.of(context).size.height) * 0.8,
              width: (MediaQuery.of(context).size.width) * 0.8,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withOpacity(0.05),
              ),
            ),
          ),
          Positioned(
            top: (MediaQuery.of(context).size.height) * 0.2,
            left: 50,
            right: 50,
            child: SfRadialGauge(
              axes: <RadialAxis>[
                RadialAxis(
                  pointers: <GaugePointer>[
                    const RangePointer(
                      value: 500,
                      cornerStyle: CornerStyle.bothCurve,
                      enableAnimation: true,
                      animationDuration: 1200,
                      animationType: AnimationType.ease,
                      width: 0.09,
                      sizeUnit: GaugeSizeUnit.factor,
                    )
                  ],
                  annotations: <GaugeAnnotation>[
                    GaugeAnnotation(
                      positionFactor: 0.1,
                      angle: 90,
                      widget: Padding(
                        padding: const EdgeInsets.only(bottom: 120),
                        child: RotatedBox(
                          quarterTurns: 3,
                          child: FaIcon(
                            FontAwesomeIcons.shoePrints,
                            size: 40,
                            color: Colors.white.withOpacity(0.5),
                          ),
                        ),
                      ),
                    ),
                    GaugeAnnotation(
                      positionFactor: 0.1,
                      angle: 90,
                      widget: Text(
                        '500',
                        style: TextStyle(
                          fontSize: 55,
                          fontWeight: FontWeight.bold,
                          color: Colors.white.withOpacity(0.65),
                        ),
                      ),
                    ),
                    GaugeAnnotation(
                      positionFactor: 0.45,
                      angle: 90,
                      widget: Text(
                        'Goal : 2000',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white.withOpacity(0.5),
                        ),
                      ),
                    ),
                  ],
                  minimum: 0,
                  maximum: 2000,
                  showLabels: false,
                  showTicks: false,
                  axisLineStyle: const AxisLineStyle(
                    thickness: 0.06,
                    cornerStyle: CornerStyle.bothCurve,
                    color: Color.fromARGB(30, 0, 169, 181),
                    thicknessUnit: GaugeSizeUnit.factor,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 180,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 100,
                  width: ((MediaQuery.of(context).size.width) - 60) / 3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white.withOpacity(0.25),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Calories',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "244",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 100,
                  width: ((MediaQuery.of(context).size.width) - 60) / 3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white.withOpacity(0.25),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Active Time',
                        // ignore: prefer_const_constructors
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "244",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 100,
                  width: ((MediaQuery.of(context).size.width) - 60) / 3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white.withOpacity(0.25),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Miles',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "244",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
