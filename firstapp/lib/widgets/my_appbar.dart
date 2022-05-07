import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class MyAppbar extends StatefulWidget {
  const MyAppbar({Key? key}) : super(key: key);

  @override
  State<MyAppbar> createState() => _MyAppbarState();
}

class _MyAppbarState extends State<MyAppbar> {
  @override
  void initState() {
    getPrefs();
    super.initState();
  }
  getPrefs()async{
    final prefs = await SharedPreferences.getInstance();
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: true,
      elevation: 0.0,
      title: FlatButton(
        onPressed: () {  },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(

              children: [
                Flexible(
                    child: Text('Delivery Address',style: TextStyle(color: Colors.white),overflow: TextOverflow.ellipsis,)),
                Icon(Icons.edit_outlined,
                  color: Colors.white,
                  size: 15,

                ),

              ],
            ),
            Flexible(child: Text('address',
              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
              overflow: TextOverflow.ellipsis,
            ),
            ),
          ],
        ),
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.power_settings_new,
            color: Colors.white,
          ),
          onPressed: (){
            Navigator.pop(context);

          },
        ),

        IconButton(
          icon: Icon(
            Icons.account_circle_outlined,
            color: Colors.white,),
          onPressed: (){},
        ),
      ],
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              prefixIcon: Icon(Icons.search,color: Colors.grey,),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(3),
                  borderSide: BorderSide.none
              ),
              contentPadding: EdgeInsets.zero,
              filled: true,
              fillColor: Colors.white,


            ),
          ),
        ),
      ),
    );
  }
}
