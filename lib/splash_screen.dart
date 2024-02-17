import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:meals/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Expanded(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: HexColor('#827500'),
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.fromLTRB(100, 30, 100, 100)),
            Image.asset(
              'assets/splash.gif',
              width: 140,
              height: 151,
            ),
            const Text(
              "JustEat",
              style: TextStyle(
                color: Colors.white,
                fontSize: 50,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 300,
            ),
            Container(
              width: 278,
              height: 38,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                  );
                },
                child: const Text(
                  'Click here to CONTINUE.!',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Powered by",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            Image.asset(
              'assets/imiot.png',
              width: 115,
              height: 64,
            )
          ],
        ),
      ),
    ));
  }
}
