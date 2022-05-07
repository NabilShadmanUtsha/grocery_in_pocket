import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:grocery_vendor_app/screens/add_newproduct_screen.dart';
import 'package:grocery_vendor_app/screens/dashboard_screen.dart';
import 'package:grocery_vendor_app/screens/product_screen.dart';
import 'package:grocery_vendor_app/services/drawer_services.dart';


class HomeScreen extends StatefulWidget {
  static const String id = 'home-screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();

}

class _HomeScreenState extends State<HomeScreen> {
var vendorData;

  DrawerServices _services = DrawerServices();
  GlobalKey<SliderDrawerState> _key = GlobalKey<SliderDrawerState>();
  late String title;
  @override
  void initState() {
    title = "Home";
    getVendorData();
    super.initState();
  }

  Future<DocumentSnapshot> getVendorData()async{
    var user;
    var result =FirebaseFirestore.instance.collection('vendors').doc(user.uid).get();
    setState(() {
      vendorData = result;
    });
    return result;
  }



@override
Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: SliderDrawer(
          appBar: SliderAppBar(
            trailing: Row(
              children: [
                IconButton(
                    onPressed: (){},
                    icon: Icon(CupertinoIcons.search),
                ),
                IconButton(
                  onPressed: (){},
                  icon: Icon(CupertinoIcons.bell),
                )

              ],
            ),
              appBarColor: Colors.white,
              appBarHeight: 80,
              title: Text('')),
          key: _key,
          sliderOpenSize: 179,

          slider: _SliderView(
            onItemClick: (title) {
              _key.currentState!.closeSlider();
              setState(() {
                this.title = title;
              });
            },
          ),
          child: ProductScreen(),


      ),


    ),
  );
}
}
class _SliderView extends StatelessWidget {
  final Function(String)? onItemClick;

  const _SliderView({Key? key, this.onItemClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 4,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: FittedBox(
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.grey,
                    child: CircleAvatar(
                      radius: 30,
                    ),
                  ),
                  Text(
                    'Shop Name',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
            ),
          ),


          SizedBox(
            height: 10,
          ),
          _SliderMenuItem(
              title: 'Dashboard', iconData: Icons.dashboard_outlined, onTap: onItemClick),
          _SliderMenuItem(
              title: 'Product',
              iconData: Icons.shopping_bag_outlined,
              onTap: onItemClick),
          _SliderMenuItem(
              title: 'Banner',
              iconData: CupertinoIcons.photo,
              onTap: onItemClick),
          _SliderMenuItem(
              title: 'Coupons',
              iconData: CupertinoIcons.gift,
              onTap: onItemClick),
          _SliderMenuItem(
              title: 'orders', iconData: Icons.stacked_bar_chart, onTap: onItemClick),
          _SliderMenuItem(
              title: 'Setting', iconData: Icons.settings, onTap: onItemClick),
          _SliderMenuItem(
              title: 'LogOut',
              iconData: Icons.arrow_back_ios,
              onTap: onItemClick),
        ],
      ),
    );
  }
}

class _SliderMenuItem extends StatelessWidget {
  final String title;
  final IconData iconData;
  final Function(String)? onTap;

  const _SliderMenuItem(
      {Key? key,
        required this.title,
        required this.iconData,
        required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(title,
            style: TextStyle(
                color: Colors.black, fontFamily: 'BalsamiqSans_Regular')),
        leading: Icon(iconData, color: Colors.black),
        onTap: () => onTap?.call(title));
  }
}