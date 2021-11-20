import 'package:flutter/material.dart';

class LockApp extends StatefulWidget {
  const LockApp({Key? key}) : super(key: key);

  @override
  _LockAppState createState() => _LockAppState();
}

class _LockAppState extends State<LockApp> {
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
      body: SingleChildScrollView(
          child:
          Center(
            child: Column(children: [
              Text("Create New Account",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
            Text("Sign in to manage your projects & deals",
              style: TextStyle(fontSize: 12,
                  color: Colors.grey,
                  fontWeight: FontWeight.normal),),
            // Divider(height: 2,color: Colors.grey,thickness: 2,)
            SizedBox(height: 5,),
            Container(width: 250, height: 1, color: Colors.grey,),
            SizedBox(height: 25,),
            Container(width: size.width * 0.75,
              height: 350,
              decoration: BoxDecoration(color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Colors.grey),
                  ]),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10,top: 10,bottom:5),
                  child:  Text("Full Name:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child:  Container(width: size.width * 0.7,
                    height: 25,
                    decoration: BoxDecoration(
                        color: Colors.white,boxShadow: [
                      BoxShadow(color: Colors.grey)
                    ]),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Anthony Clifford",
                        contentPadding: EdgeInsets.only(left: 5,bottom: 15),
                        hintStyle:
                        TextStyle(color:  Colors.black,fontWeight: FontWeight.bold,fontSize: 12),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,top: 10,bottom: 5),
                    child:  Text("Username:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child:  Container(width:size.width * 0.7,
                      height: 25,
                      decoration: BoxDecoration(
                          color: Colors.white,boxShadow: [
                        BoxShadow(color: Colors.grey)
                      ]),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "AnthonyCD",contentPadding: EdgeInsets.only(left: 5,bottom: 15),
                          hintStyle:
                          TextStyle(color:  Colors.black,fontWeight: FontWeight.bold,fontSize: 12),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,top: 10,bottom: 5),
                    child:  Text("Email Address:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child:  Container(width: size.width *0.7,
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
                    padding: const EdgeInsets.only(left: 10,top: 10,bottom: 5),
                    child:  Text("Phone Number",style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child:  Container(width: size.width * 0.7,
                      height: 25,
                      decoration: BoxDecoration(
                          color: Colors.white,boxShadow: [
                        BoxShadow(color: Colors.grey)
                      ]),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "+234 816 827 6114",
                          contentPadding: EdgeInsets.only(left: 5,bottom: 15),
                          hintStyle:
                          TextStyle(color:  Colors.black,fontWeight: FontWeight.bold,fontSize: 12),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,top: 10,bottom: 5),
                    child:  Text("Password:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child:  Container(width: size.width * 0.7,
                      height: 25,
                      decoration: BoxDecoration(
                          color: Colors.white,boxShadow: [
                        BoxShadow(color: Colors.grey)
                      ]),
                      child: TextFormField(
                        decoration: InputDecoration(suffixIcon:
                        Icon(Icons.remove_red_eye_sharp,color: Colors.black,),
                          hintText: ".................",
                          contentPadding: EdgeInsets.only(left: 5,bottom: 15),
                          hintStyle:
                          TextStyle(color:  Colors.black,fontWeight: FontWeight.bold),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0,top: 15),
                    child: Container(width:size.width * 0.7,height: 30,
                      child: RaisedButton(color: Colors.blue,
                        onPressed: (){},child: Text("Create New Account",
                          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Center(child: Text("Already have an account? Login",style: TextStyle(color: Colors.grey),)),)
                ]
                  ,)
            ),
             ]
    ),
          )),
    );
  }
}