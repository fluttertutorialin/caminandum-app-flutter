import 'package:flutter/material.dart';

class WaterSportScreen extends StatelessWidget {
  const WaterSportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: Color(0xFFF55D32),
        ),
        title: Text(
          'Sports',
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
                          image: AssetImage("assets/images/photo-17.png"),
                          fit: BoxFit.cover,
                        )),
                  ),
                  Text(
                    "Beach Yoga",
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
                          image: AssetImage("assets/images/photo-18.png"),
                          fit: BoxFit.cover,
                        )),
                  ),
                  Text(
                    "Kite Surffing",
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
                          image: AssetImage("assets/images/photo-19.png"),
                          fit: BoxFit.cover,
                        )),
                  ),
                  Text(
                    "Volleball",
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
                          image: AssetImage("assets/images/photo-20.png"),
                          fit: BoxFit.cover,
                        )),
                  ),
                  Text(
                    "Kayak",
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
                          image: AssetImage("assets/images/photo-21.png"),
                          fit: BoxFit.cover,
                        )),
                  ),
                  Text(
                    "Jet ski",
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
                          image: AssetImage("assets/images/photo-22.png"),
                          fit: BoxFit.cover,
                        )),
                  ),
                  Text(
                    "Cance",
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
                          image: AssetImage("assets/images/photo-23.png"),
                          fit: BoxFit.cover,
                        )),
                  ),
                  Text(
                    "FailBoard",
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
                          image: AssetImage("assets/images/photo-24.png"),
                          fit: BoxFit.cover,
                        )),
                  ),
                  Text(
                    "Swimming",
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
