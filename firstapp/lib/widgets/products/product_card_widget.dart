import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1,color: Colors.grey)
        )
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 8, bottom: 8, left: 10, right: 10),
        child: Row(
          children: [
            Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(10),
              child: SizedBox(
                height: 140,
                width: 130,
                child: Container(
                  child: Image.asset('images/logo.png'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Text(
                            'Brand',
                            style: TextStyle(fontSize: 10),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            'Product Name',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width - 160,
                            padding: EdgeInsets.only(top: 10, bottom: 10, left: 6),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.grey,
                            ),
                            child: Text(
                              '1 kg',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, color: Colors.black),
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Row(
                            children: [
                              Text('\ 50 TK'),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '\ 100 TK',
                                style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                    fontSize: 12),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width-160,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Card(
                                color: Colors.pink,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 30,right: 30,top: 7,bottom: 7),
                                  child: Text('Add',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                                ),
                              ),
                            ],
                          ),
                        ),

                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
