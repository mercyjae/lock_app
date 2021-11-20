import 'dart:ui';

import 'package:flutter/material.dart';
class RelockApp extends StatefulWidget {
  const RelockApp({Key? key}) : super(key: key);

  @override
  _RelockAppState createState() => _RelockAppState();
}

class _RelockAppState extends State<RelockApp> {
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
    body: SingleChildScrollView(child:
      Center(
        child: Column(
          children: [
          Text("Forgot Password",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
        Text("Reset your account password with ease",
          style: TextStyle(fontSize: 12,
              color: Colors.grey,
              fontWeight: FontWeight.bold),),
        SizedBox(height: 5,),
        Container(width: 230, height: 1, color: Colors.grey,),
        SizedBox(height: 25,),
        Container(width: size.width * 0.7,
          height: 280,
          decoration: BoxDecoration(color: Colors.white,
              boxShadow: [
                BoxShadow(color: Colors.grey),],

          ),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10,),
              Image.asset("assets/images/Approved Unlock.png"),SizedBox(height: 10,),
              Center(
                child: Text("A Password reset link will be sent \n to your registered email address.",
                  style: TextStyle(color: Colors.grey)),
              ),  SizedBox(height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left:8,top: 10,bottom: 5),
                child:  Text("Email Address:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(width: size.width *0.65,
                  height: 25,
                  decoration: BoxDecoration(
                      color: Colors.white,boxShadow: [
                    BoxShadow(color: Colors.grey)
                  ]),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "anthony@gmail.com",contentPadding: EdgeInsets.only(left: 5,bottom: 15),
                      hintStyle:
                      TextStyle(color:  Colors.black,fontWeight: FontWeight.bold,fontSize: 12),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
              ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0,top: 15),
            child: Container(width:size.width * 0.65,height: 30,
              child: RaisedButton(color: Colors.blue.shade800,
                onPressed: (){},child: Text("Submit",
                  style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),),
            ) ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Center(child: Text("Remember your password? Login",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w700,fontSize: 15),)),)
            ],
          ),
        )

        ],),
      )),

    );
  }
}
