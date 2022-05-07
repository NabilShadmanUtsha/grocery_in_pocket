import 'package:firstapp/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          child: Text('Sign Out'),
          onPressed: (){
            pushNewScreenWithRouteSettings(
                context,
                screen: WelcomeScreen(),
                settings: RouteSettings(name: WelcomeScreen.id),
            withNavBar: false,
            pageTransitionAnimation: PageTransitionAnimation.cupertino,
            );
          },
        )
      ),
    );
  }
}
