import 'package:flutter/material.dart';
import 'package:grocery_vendor_app/screens/product_screen.dart';

import '../screens/home_screen.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: TextFormField(
              validator: (value) {
                if(value!.isEmpty){
                  return 'Enter Shop name';
                }
                return null;
              },
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.add_business),
                  labelText: 'Business Name',
                  contentPadding: EdgeInsets.zero,
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2, color: Theme.of(context).primaryColor
                    )
                    ),
                  focusColor: Theme.of(context).primaryColor,
                  ),


                ),
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: TextFormField(
                validator: (value) {
                  if(value!.isEmpty){
                    return 'Enter Mobile Number';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone_android),
                  labelText: 'Mobile Number',
                  contentPadding: EdgeInsets.zero,
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 2, color: Theme.of(context).primaryColor
                      )
                  ),
                  focusColor: Theme.of(context).primaryColor,
                ),


              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: TextFormField(
                validator: (value) {
                  if(value!.isEmpty){
                    return 'Email not valid';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email_outlined),
                  labelText: 'Email',
                  contentPadding: EdgeInsets.zero,
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 2, color: Theme.of(context).primaryColor
                      )
                  ),
                  focusColor: Theme.of(context).primaryColor,
                ),


              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: TextFormField(
                validator: (value) {
                  if(value!.isEmpty){
                    return 'Enter Password';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.add_business),
                  labelText: 'Password',
                  contentPadding: EdgeInsets.zero,
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 2, color: Theme.of(context).primaryColor
                      )
                  ),
                  focusColor: Theme.of(context).primaryColor,
                ),


              ),
            ),

            SizedBox(height: 20,),
            Row(
              children: [
                Expanded(
                  child: FlatButton(
                    color: Theme.of(context).primaryColor,
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        );
                      },
                      child: Text('Register',style: TextStyle(color: Colors.white),),
                  ),
                ),
              ],
            )

          ],

    ),
    );
  }
}
