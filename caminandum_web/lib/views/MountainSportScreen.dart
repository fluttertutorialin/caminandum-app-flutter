import 'package:flutter/material.dart';

class MountainSportScreen extends StatelessWidget {
  const MountainSportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: Color(0xFFF55D32),
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
          child: GridView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 140,
                    width: 140,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        image: DecorationImage(
                          image: AssetImage("assets/images/photo-25.png"),
                          fit: BoxFit.cover,
                        )),
                  ),
                  Text(
                    "Climbing",
                    style: TextStyle(fontFamily: "Mo-re-b"),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 140,
                    width: 140,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        image: DecorationImage(
                          image: AssetImage("assets/images/photo-26.png"),
                          fit: BoxFit.cover,
                        )),
                  ),
                  Text(
                    "Hockey",
                    style: TextStyle(fontFamily: "Mo-re-b"),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 140,
                    width: 140,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        image: DecorationImage(
                          image: AssetImage("assets/images/photo-27.png"),
                          fit: BoxFit.cover,
                        )),
                  ),
                  Text(
                    "Skating",
                    style: TextStyle(fontFamily: "Mo-re-b"),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 140,
                    width: 140,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        image: DecorationImage(
                          image: AssetImage("assets/images/photo-28.png"),
                          fit: BoxFit.cover,
                        )),
                  ),
                  Text(
                    "Nordic Walking",
                    style: TextStyle(fontFamily: "Mo-re-b"),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 140,
                    width: 140,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        image: DecorationImage(
                          image: AssetImage("assets/images/photo-29.png"),
                          fit: BoxFit.cover,
                        )),
                  ),
                  Text(
                    "Sking",
                    style: TextStyle(fontFamily: "Mo-re-b"),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 140,
                    width: 140,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        image: DecorationImage(
                          image: AssetImage("assets/images/photo-30.png"),
                          fit: BoxFit.cover,
                        )),
                  ),
                  Text(
                    "Snowboard",
                    style: TextStyle(fontFamily: "Mo-re-b"),
                  ),
                ],
              ),
            ],
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 5,
                crossAxisSpacing: 10,
                mainAxisExtent: 160),
          ),
        ),
      ),
    );
  }
}
