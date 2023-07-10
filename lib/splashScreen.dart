import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mediature/pages/Accueil.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Accueil()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'lib/assets/logo.png',
              height: 250.0,
            ),
            SizedBox(
              height: 16.0,
            ),
            CircularProgressIndicator(),

            FittedBox(
              fit: BoxFit.fitWidth,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                '© 2023 - Médiature de la République du Sénégal',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey[600],
                ),
            ),
              ),
                )

          ],
        ),
      ),
    );
  }
}

