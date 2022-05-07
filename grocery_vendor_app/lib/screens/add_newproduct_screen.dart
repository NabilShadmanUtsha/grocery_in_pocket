import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class AddNewProduct extends StatefulWidget {
  static const String id = 'addnewproduct - screen';

  @override
  State<AddNewProduct> createState() => _AddNewProductState();
}

class _AddNewProductState extends State<AddNewProduct> {
  final _formkey = GlobalKey<FormState>();

  bool _track =false;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(),
        body: Form(
          key: _formkey,
          child: Column(
            children: [
              Material(
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          child: Text('Products / Add'),
                        ),
                      ),
                      FlatButton.icon(
                        color:  Theme.of(context).primaryColor,
                        icon: Icon(Icons.save,color: Colors.white),
                        label: Text('Save',style: TextStyle(color: Colors.white),),
                        onPressed: (){},
                      )



                    ],

                  ),
                ),
              ),
              TabBar(
                indicatorColor: Theme.of(context).primaryColor,
                labelColor: Theme.of(context).primaryColor,
                unselectedLabelColor: Colors.black54,
                tabs: [
                  Tab(text: 'GENERAL',),
                  Tab(text: 'INVENTORY',
                  ),
                ],
              ),
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: TabBarView(
                        children: [
                          ListView(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  children: [
                                    TextFormField(
                                      decoration: InputDecoration(
                                        labelText: 'Product Name*',
                                        labelStyle: TextStyle(color: Colors.grey),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.grey,
                                          )
                                        )
                                      ),
                                    ),
                                    TextFormField(
                                      decoration: InputDecoration(
                                          labelText: 'About Product',
                                          labelStyle: TextStyle(color: Colors.grey),
                                          enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.grey,
                                              )
                                          )
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: SizedBox(
                                        width: 150,
                                        height: 150,
                                        child: Card(
                                          child: Center(child: Text('Product Image'),),
                                        ),

                                      ),
                                    ),
                                    TextFormField(
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                          labelText: 'Price*',
                                          labelStyle: TextStyle(color: Colors.grey),
                                          enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.grey,
                                              )
                                          )
                                      ),
                                    ),
                                    TextFormField(
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                          labelText: 'Compared Price',
                                          labelStyle: TextStyle(color: Colors.grey),
                                          enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.grey,
                                              )
                                          )
                                      ),
                                    ),

                                  ],
                                ),
                              )
                            ],
                          ),
                          SingleChildScrollView(
                            child: Column(
                              children: [
                                SwitchListTile(
                                  title: Text('Track Inventory'),
                                  activeColor: Theme.of(context).primaryColor,
                                  subtitle: Text(
                                    'Switch ON to track inventory',
                                    style: TextStyle(
                                        color: Colors.grey,fontSize: 12
                                    ),
                                  ),
                                  value: _track,
                                  onChanged: (selected){
                                    setState(() {
                                      _track =!_track;
                                    }
                                    );
                                  },
                                ),
                                SizedBox(
                                  height: 300,
                                  width: double.infinity,
                                  child: Card(
                                    elevation: 3,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          TextField(
                                            keyboardType: TextInputType.number,
                                            decoration: InputDecoration(
                                                labelText: 'Inventory Quantity',
                                                labelStyle: TextStyle(color: Colors.grey),
                                                enabledBorder: UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Colors.grey,
                                                    )
                                                )
                                            ),
                                          ),
                                          TextField(
                                            keyboardType: TextInputType.number,
                                            decoration: InputDecoration(
                                                labelText: 'Inventory Low Stock Quantity',
                                                labelStyle: TextStyle(color: Colors.grey),
                                                enabledBorder: UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Colors.grey,
                                                    )
                                                )
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),

            ],
          ),
        ),
      ),
    );
  }
}
