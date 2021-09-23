import 'package:caminandum_web/views/MountainSportScreen.dart';
import 'package:caminandum_web/views/SportScreen.dart';
import 'package:caminandum_web/views/WaterSportScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SelectSport extends StatelessWidget {
  const SelectSport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back,
            color: Color(0xFFF55D32),
          ),
        ),
        title: Text(
          'Mountain Sports',
          style: TextStyle(color: Colors.black),
          textAlign: TextAlign.center,
        ),
        // actions: [
        //   Icon(Icons.favorite),
        //   Padding(
        //     padding: EdgeInsets.symmetric(horizontal: 16),
        //     child: Icon(Icons.search),
        //   ),
        //   Icon(Icons.more_vert),
        // ],
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
      ),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 30),
                child: Text(
                  "which Sport do you want to do?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: "Mo-re-b",
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ),
              InkWell(
                onTap: () {
                  Get.to(() => SportScreen());
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 140,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            image: DecorationImage(
                              image: AssetImage("assets/images/photo-6.png"),
                              fit: BoxFit.cover,
                            )),
                      ),
                      Text(
                        "Sports",
                        style: TextStyle(fontFamily: "Mo-re-b"),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Get.to(() => WaterSportScreen());
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 140,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            image: DecorationImage(
                              image: AssetImage("assets/images/photo-7.png"),
                              fit: BoxFit.cover,
                            )),
                      ),
                      Text(
                        "Water Sports",
                        style: TextStyle(fontFamily: "Mo-re-b"),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Get.to(() => MountainSportScreen());
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 140,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            image: DecorationImage(
                              image: AssetImage("assets/images/photo-8.png"),
                              fit: BoxFit.cover,
                            )),
                      ),
                      Text(
                        "Mountain Sports",
                        style: TextStyle(fontFamily: "Mo-re-b"),
                      ),
                    ],
                  ),
                ),
              ),
            ],
            // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //     crossAxisCount: 1,
            //     mainAxisSpacing: 5,
            //     crossAxisSpacing: 10,
            //     childAspectRatio: 2),
          ),
        ),
      ),
    );
  }
}
