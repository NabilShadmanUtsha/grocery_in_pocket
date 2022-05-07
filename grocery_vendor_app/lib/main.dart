import 'dart:async';
import 'package:flutter/material.dart';
import 'package:grocery_vendor_app/screens/add_newproduct_screen.dart';
import 'package:grocery_vendor_app/screens/home_screen.dart';
import 'package:grocery_vendor_app/screens/product_screen.dart';
import 'package:grocery_vendor_app/screens/register_screen.dart';
import 'package:grocery_vendor_app/screens/splash_screen.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: const Color(0xFF84c225),
          fontFamily: 'Lato'
      ),

      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id:(context)=>SplashScreen(),
        HomeScreen.id:(context)=>HomeScreen(),
        RegisterScreen.id:(context)=>RegisterScreen(),
        AddNewProduct.id:(context)=>AddNewProduct(),
        ProductScreen.id:(context)=>ProductScreen(),


      },
    );
  }
}


