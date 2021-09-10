import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Caminandum-screen.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: const <Widget>[
            SizedBox(
              height: 250,
            ),
            Center(child: Text(
              'Caminandum',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
            )),
          ],
        ), /* add child content here */
      ),
    );
  }
}
