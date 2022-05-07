import 'dart:async';

import 'package:flutter/material.dart';
import 'package:grocery_vendor_app/screens/home_screen.dart';
import 'package:grocery_vendor_app/screens/register_screen.dart';


class  SplashScreen extends StatefulWidget {
  static const String id = 'splash-screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Timer(
        const Duration(
          seconds: 3,
        ),() {
      Navigator.pushReplacement(context, MaterialPageRoute(
        builder:(context)=>RegisterScreen(),
      ));
    }
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('images/logo.png'),
            Text('Grocery In Pocket - Vendor App',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.indigo),),



          ],
        ),


      ),
    );
  }
}


