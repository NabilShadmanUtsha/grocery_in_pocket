import 'package:firstapp/widgets/image_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firstapp/widgets/my_appbar.dart';
import 'package:firstapp/widgets/products/featured_product.dart';

class VendorHomeScreen extends StatelessWidget {
  static const String id = 'Vendor-Screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
          return [
            SliverAppBar(
            iconTheme: IconThemeData(
              color: Colors.white
            ),
            actions: [
              IconButton(
                  onPressed: (){},
                  icon: Icon(CupertinoIcons.search)
              )
            ],
              title: Text('Vendor Name',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
          )
              ];
        },

        body: ListView(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            ImageSlider(),
            FeaturedProducts(),
            FeaturedProducts(),
            FeaturedProducts(),
            FeaturedProducts(),
          ],
        ),
      ),
    );
  }
}
