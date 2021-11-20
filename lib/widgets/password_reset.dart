import 'dart:ui';

import 'package:flutter/material.dart';
class PasswordReset extends StatefulWidget {
  const PasswordReset({Key? key}) : super(key: key);

  @override
  _PasswordResetState createState() => _PasswordResetState();
}

class _PasswordResetState extends State<PasswordReset> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> _widgetOptions = <Widget>[
  Text(
  'Index 0: Home',
    style: optionStyle,
  ),
  Text(
  'Index 1: Business',
  style: optionStyle,
  ),
  Text(
  'Index 2: School',
  style: optionStyle,
  ),
  Text(
  'Index 3: Settings',
  style: optionStyle,
  ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(appBar: AppBar(backgroundColor: Colors.white, elevation: 0,
      leading:IconButton(icon: Icon(Icons.arrow_back_sharp),
    color: Colors.black,iconSize: 40,
    onPressed: (){Navigator.pop(context);},),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right:18.0),
          child: Image.asset("assets/images/close.png",width: 20,height: 30,),
        ),
      ],),
      body: SingleChildScrollView(child: Center(
        child: Column(children: [
          Text("Password  Reset",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
        SizedBox(height: 5,),
        Container(width: 250, height: 1, color: Colors.grey,),
        SizedBox(height: 20,),
        Container(width: size.width * 0.75,
          height: 370,
          decoration: BoxDecoration(color: Colors.white,
              boxShadow: [
                BoxShadow(color: Colors.grey),
              ],),
          child:Center(
            child: Column(
              children: [
              Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Container(width:size.width * 0.7,height: 50,
                    child: RaisedButton(color: Colors.green,
                      onPressed: (){},
                      child: Text("Link Sent Successfully ",
                        style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),),
                  ) ),
                SizedBox(height: 15,),
                Image.asset("assets/images/frame.png",),
                SizedBox(height: 15),
                Text("Password Sent Successfully",
                  style: TextStyle(fontWeight: FontWeight.bold),),SizedBox(height: 10,),
                Text("A password reset link has been \n     sent to your email address.\n Please check your inbox (or spam \n  box)."
                    " and click the link to create \n               your new pin.",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                SizedBox(height: 10),
                Container(width:size.width * 0.7,height: 30,
                  child: RaisedButton(color: Colors.blue,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                    onPressed: (){},
                    child: Text("Go to Home ",
                      style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),),
                ), ],),
          ),
        ),

        ],),
      ),),

    );
  }
}
