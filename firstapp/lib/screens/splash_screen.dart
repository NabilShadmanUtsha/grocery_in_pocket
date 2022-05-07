import 'dart:async';

import 'package:firstapp/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'homeScreen.dart';
import 'welcome_screen.dart';

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
        builder:(context)=>WelcomeScreen(),
      ));
    }
    );
    super.initState();
  }

  Future<void>updatePrefs(result)async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Navigator.pushReplacementNamed(context, MainScreen.id);


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('images/logo.png'),
            Text('Grocery In Pocket',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.indigo),),



          ],
        ),


      ),
    );
  }
}


