import 'package:flutter/material.dart';

class ShopPicCard extends StatelessWidget {
  const ShopPicCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
        height: 150,
        width: 150,
        child: Card(
          child: Center(child: Text("Add Shop Image",
          style: TextStyle(color: Colors.grey),
          )),
        ),
      ),
    );
  }
}
