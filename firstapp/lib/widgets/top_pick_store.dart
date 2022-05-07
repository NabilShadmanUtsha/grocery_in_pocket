import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firstapp/services/store_services.dart';
import 'package:flutter/material.dart';

class TopPickStore extends StatefulWidget {
  const TopPickStore({Key? key}) : super(key: key);

  @override
  State<TopPickStore> createState() => _TopPickStoreState();
}

class _TopPickStoreState extends State<TopPickStore> {
  StoreServices _storeServices = StoreServices();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: StreamBuilder<QuerySnapshot>(
        stream: _storeServices.getTopPickedStore(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapShot){
          if(!snapShot.hasData)return CircularProgressIndicator();
          return Column(
            children: [
              Flexible(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: snapShot.data!.docs.map((DocumentSnapshot document){
                    return Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        width: 80,
                        child: Column(
                          children: [
                            Image.network(document['imageUrl'],fit: BoxFit.cover,)
                          ],
                        ),
                      ),
                    );

                  }).toList(),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
