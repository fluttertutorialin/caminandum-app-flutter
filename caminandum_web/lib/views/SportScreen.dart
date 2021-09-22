import 'package:flutter/material.dart';

class SportScreen extends StatelessWidget {
  const SportScreen({Key? key}) : super(key: key);

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
                          image: AssetImage("assets/images/photo-9.png"),
                          fit: BoxFit.cover,
                        )),
                  ),
                  Text(
                    "Baseball",
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
                          image: AssetImage("assets/images/photo-10.png"),
                          fit: BoxFit.cover,
                        )),
                  ),
                  Text(
                    "Crossfit",
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
                          image: AssetImage("assets/images/photo-11.png"),
                          fit: BoxFit.cover,
                        )),
                  ),
                  Text(
                    "Dancing",
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
                          image: AssetImage("assets/images/photo-12.png"),
                          fit: BoxFit.cover,
                        )),
                  ),
                  Text(
                    "Golf",
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
                          image: AssetImage("assets/images/photo-13.png"),
                          fit: BoxFit.cover,
                        )),
                  ),
                  Text(
                    "Paddle",
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
                          image: AssetImage("assets/images/photo-14.png"),
                          fit: BoxFit.cover,
                        )),
                  ),
                  Text(
                    "Running",
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
                          image: AssetImage("assets/images/photo-15.png"),
                          fit: BoxFit.cover,
                        )),
                  ),
                  Text(
                    "Trail Running",
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
                          image: AssetImage("assets/images/photo-16.png"),
                          fit: BoxFit.cover,
                        )),
                  ),
                  Text(
                    "Yoga",
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
