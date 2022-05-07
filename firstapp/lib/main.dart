import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
//import 'firebase_options.dart';
import 'package:firstapp/screens/homeScreen.dart';
import 'package:firstapp/screens/main_screen.dart';
import 'package:firstapp/screens/onboard_screen.dart';
import 'package:firstapp/screens/splash_screen.dart';
import 'package:firstapp/screens/vendor_home_screen.dart';
import 'package:firstapp/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

import 'screens/onboard_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData(primaryColor: const Color(0xFF84c225), fontFamily: 'Lato'),
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id: (context) => SplashScreen(),
        HomeScreen.id: (context) => HomeScreen(),
        WelcomeScreen.id: (context) => WelcomeScreen(),
        OnBoardScreen.id: (context) => OnBoardScreen(),
        MainScreen.id: (context) => MainScreen(),
        VendorHomeScreen.id: (context) => VendorHomeScreen(),
      },
    );
  }
}
