import 'package:firstapp/screens/vendor_home_screen.dart';
import 'package:firstapp/widgets/top_pick_store.dart';
import 'package:firstapp/screens/welcome_screen.dart';
import 'package:firstapp/widgets/image_slider.dart';
import 'package:firstapp/widgets/my_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class HomeScreen extends StatefulWidget {
  static const String id = 'home-screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
          return [MyAppbar()
      ];
      },

        body: ListView(
          padding: EdgeInsets.only(top: 0.0),
          children: [
            ImageSlider(),
            RaisedButton(
              onPressed: (){

                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => VendorHomeScreen())
                );
              },
              child: Text('Vendor Screen'),

            ),
            Container(
                height: 200,
                child: TopPickStore()),
            TopPickStore(),

          ],
        ),
      ),
    );
  }
}
