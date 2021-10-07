import 'dart:developer';
import 'dart:io';
import 'dart:math';

import 'package:caminandum_web/model/pedometer/todayinfo_model.dart';
import 'package:caminandum_web/services/padometer_service_manager.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:pedometer/pedometer.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import 'package:caminandum_web/controllers/radioController.dart';
import 'package:caminandum_web/view/widgets/menuWidget.dart';
import '../widgets/p_appBar.dart';

class PedoMeterScreen extends StatefulWidget {
  const PedoMeterScreen({Key? key}) : super(key: key);

  @override
  _PedoMeterScreenState createState() => _PedoMeterScreenState();
}

class _PedoMeterScreenState extends State<PedoMeterScreen> {
  late Stream<StepCount> _stepCountStream;
  late Stream<PedestrianStatus> _pedestrianStatusStream;
  String _status = '?', _steps = '0';
  late double _numerox;
  late double _convert;
  late num _kmx;
  late double burnedx;
  String _km = "Unknown";
  String _calories = "Unknown";
  String dailyGoal = '0';
  List<ItemsInfo> listViews = [ItemsInfo('Today',isSelected: true), ItemsInfo('Week'), ItemsInfo('Month'),ItemsInfo('League')];
  var selectedTab = 0;
  var todayInfo = TodayInfoResponse();

  @override
  void initState() {
    super.initState();
    // ask for permission
    initPlatformState();
    apiGetTodayInfo();

  }

  void onStepCount(StepCount event) {
    print(event);
    setState(() {
      _steps = event.steps.toString();
    });

    var dist = event.steps;
    double y = (dist + .0);
    setState(() {
      _numerox = y;
    });

    num long3 = (_numerox);
    long3 = num.parse(y.toStringAsFixed(2));
    var long4 = (long3 / 10000);

    int decimals = 1;
    num fac = pow(10, decimals);
    double d = long4;
    d = (d * fac).round() / fac;
    print("d: $d");

    getDistanceRun(_numerox);

    setState(() {
      _convert = d;
      print(_convert);
    });
  }

  void getDistanceRun(double _numerox) {
    num distance = ((_numerox * 78) / 100000);
    distance = num.parse(distance.toStringAsFixed(2));
    var distancekmx = distance * 34;
    distancekmx = num.parse(distancekmx.toStringAsFixed(2)) * 0.62137119;
    //print(distance.runtimeType);
    setState(() {
      _km = "$distance";
      //print(_km);
    });
    setState(() {
      _kmx = num.parse(distancekmx.toStringAsFixed(2));
    });
    getBurnedRun();
  }

  void onPedestrianStatusChanged(PedestrianStatus event) {
    print(event);
    setState(() {
      _status = event.status;
    });
  }

  void onPedestrianStatusError(error) {
    print('onPedestrianStatusError: $error');
    setState(() {
      _status = 'Unavailable';
    });
    print(_status);
  }

  void onStepCountError(error) {
    print('onStepCountError: $error');
    setState(() {
      _steps = 'Unavailable';
    });
  }

  void getBurnedRun() {
    setState(() {
      var calories = _kmx;
      _calories = "$calories";
      //print(_calories);
    });
  }

  void initPlatformState() {
    _pedestrianStatusStream = Pedometer.pedestrianStatusStream;
    _pedestrianStatusStream
        .listen(onPedestrianStatusChanged)
        .onError(onPedestrianStatusError);

    _stepCountStream = Pedometer.stepCountStream;
    _stepCountStream.listen(onStepCount).onError(onStepCountError);

    if (!mounted) return;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Pedometer", style: TextStyle(color: Colors.white),),

      ),
      body: Stack(
        children: [

          Column(
            children: [
              SizedBox(height: 16),
              Container(
                color: Colors.white,
                padding: EdgeInsets.only(top: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(listViews.length, (index) {
                    final tabInfo = listViews[index];
                    return InkWell(
                      onTap: () {
                        setState(() {
                          listViews.forEach((element) {
                            element.isSelected = false;
                          });
                          listViews[index].isSelected = true;
                          selectedTab = index;

                        });
                      },
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                tabInfo.itemTitle,
                                style: TextStyle(fontSize: 16, color: Colors.black),

                              ),

                              SizedBox(height: 8,),

                              SizedBox(width: 44, child: Divider(thickness: 1.5, color: tabInfo.isSelected == true ? context.theme.primaryColor : Colors.transparent,),),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
              SizedBox(height: 16),
              Expanded(child:
                currentTab()
              )
            ],
          ),
        ]),
    );

  }

  Widget pedometerInfo(){
    return Column(
      children: [
        Expanded(
          child: SfRadialGauge(
            axes: <RadialAxis>[
              RadialAxis(
                pointers: <GaugePointer>[

                  RangePointer(
                    value: _steps == 'Unavailable'? 0: double.parse(_steps),
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
                      _steps == 'Unavailable'? 'Device': _steps,
                      style: TextStyle(
                        fontSize: _steps == 'Unavailable'?35:55,
                        fontWeight: FontWeight.bold,
                        color: Colors.white.withOpacity(0.65),
                      ),
                    ),
                  ),
                  GaugeAnnotation(
                    positionFactor: 0.45,
                    angle: 90,
                    widget: Text(
                      _steps == 'Unavailable'?'Not Supported':'Goal: $dailyGoal',
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
                axisLineStyle: AxisLineStyle(
                  thickness: 0.06,
                  cornerStyle: CornerStyle.bothCurve,
                  color: Color.fromARGB(30, 0, 169, 181),
                  thicknessUnit: GaugeSizeUnit.factor,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
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
                    Text(
                      'Calories',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      (_steps == 'Unavailable'?'N/A':_calories),
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(
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
                    Text(
                      'Active Time',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      _steps == 'Unavailable'? 'N/A':'0',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(
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
                    Text(
                      'Miles',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      _steps == 'Unavailable'?'N/A':_km,
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

    );
  }

  Widget weekInfo() {
    return Container(color: Colors.black,child: Center(child: Text('Week', style: TextStyle(color: Colors.white),)),);
  }

  Widget monthInfo() {
    return Container(color: Colors.black,child: Center(child: Text('Month', style: TextStyle(color: Colors.white),)),);
  }

  Widget leagueInfo() {
    return Container(color: Colors.black,child: Center(child: Text('League', style: TextStyle(color: Colors.white),)),);
  }

  Widget currentTab() {

    final currentViewIndex = listViews.indexWhere((element) => element.isSelected == true);
    switch(currentViewIndex) {
      case 0:
        return pedometerInfo();
      case 1:
        return weekInfo();
      case 2:
        return monthInfo();
      case 3:
        return leagueInfo();

      default:
        return Container();
    }

  }

/// Old widget
  /*Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PAppBarScreen(),
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
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

                    RangePointer(
                      value: _steps == 'Unavailable'? 0: double.parse(_steps),
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
                        _steps == 'Unavailable'? 'Device': _steps,
                        style: TextStyle(
                          fontSize: _steps == 'Unavailable'?35:55,
                          fontWeight: FontWeight.bold,
                          color: Colors.white.withOpacity(0.65),
                        ),
                      ),
                    ),
                    GaugeAnnotation(
                      positionFactor: 0.45,
                      angle: 90,
                      widget: Text(
                        _steps == 'Unavailable'?'Not Supported':'Goal: 2000',
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
                  axisLineStyle: AxisLineStyle(
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
                      Text(
                        'Calories',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        (_steps == 'Unavailable'?'N/A':_calories),
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
                SizedBox(
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
                      Text(
                        'Active Time',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        _steps == 'Unavailable'? 'N/A':'0',
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
                SizedBox(
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
                      Text(
                        'Miles',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        _steps == 'Unavailable'?'N/A':_km,
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
  } */


  //=========== APIS =============
  Future<void> apiGetTodayInfo() async {
    if (await isNetworkConnected()) {

      todayInfo = await PedometerServiceManager().getTodayInfo();
      setState(() {

        _steps = (todayInfo.stepCount ?? 0).toString();
        dailyGoal = (todayInfo.currentGoals?.dailyStepCountGoal ?? 2000).toString();

      });

    } else {
      print("--> Check your internet connection!");
    }
  }

}

// Generic Custom model class
class ItemsInfo {
  late String itemTitle;
  late String? imgUrl;
  late bool? isSelected;
  ItemsInfo(this.itemTitle, {this.imgUrl = '', this.isSelected = false});
}

var sAuthToken = '';
Future<bool> isNetworkConnected() async {
  try {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile) {
      // I am connected to a mobile network.
      return true;
    } else if (connectivityResult == ConnectivityResult.wifi) {
      // I am connected to a wifi network.
      return true;
    } else {
      return false;
    }
  } on SocketException catch (e) {
    print("isNetworkConnected exception --> $e");
  }

  return false;
}