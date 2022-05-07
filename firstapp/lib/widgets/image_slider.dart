import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:core';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({Key? key}) : super(key: key);

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  List<Object?> imageList = [];

  set _dataLength(int _dataLength) {}
  @override
  void initState() {
    getSliderImageFromDb().then((value) {
      setState(() {
        imageList = value.docs.map((doc) => doc.data()).toList();
      });

      print(imageList);
    });
    super.initState();
  }

  Future getSliderImageFromDb() async {
    var _fireStore = FirebaseFirestore.instance;
    QuerySnapshot snapshot = await _fireStore.collection('slider').get();
    if(mounted){
      setState(() {
        _dataLength=snapshot.docs.length;
      });
    }
    return snapshot;
  }

  @override
  Widget build(BuildContext context) {
    return imageList.isNotEmpty ? Padding(
      padding: const EdgeInsets.only(top: 8),
      child: CarouselSlider.builder(
        itemCount: imageList.length,
        itemBuilder: (context, index, i) {
          // DocumentSnapshot sliderImage = snapShot.data[index];
          // Map getImage = sliderImage.data();
          var data = imageList[index] as Map;
          return SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Image.network(
              data['image'],
              fit: BoxFit.fill,
            ),
          );
        },
        options: CarouselOptions(
          viewportFraction: 1,
          initialPage: 0,
          autoPlay: true,
          height: 150,
        ),
      ),
    )
        : Center(child: CircularProgressIndicator());

  }

}

