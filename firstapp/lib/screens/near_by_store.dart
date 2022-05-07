import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firstapp/services/store_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class NearByStores extends StatefulWidget {
  const NearByStores({Key? key}) : super(key: key);

  @override
  State<NearByStores> createState() => _NearByStoresState();
}

class _NearByStoresState extends State<NearByStores> {
  StoreServices _storeServices = StoreServices();
  @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Center(
          child: RaisedButton(
            onPressed: (){
              Navigator.pop(context);
            },
            child: Text('Log Out'),
          ),
        ),
      );
    }
  }


