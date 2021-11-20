
import 'package:flutter/material.dart';
import 'package:lock_app/bottom/bottom_lock_.dart';
import 'package:lock_app/bottom/bottom_password.dart';
import 'package:lock_app/bottom/bottom_relock.dart';
import 'package:lock_app/list_view.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
     final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 40,),
              Container(width: size.width * 0.85,
                height: 185,decoration: BoxDecoration(color: Colors.white,boxShadow: [
                BoxShadow(color: Colors.grey)] ),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage("assets/images/man.png"),
                    ),
                    Text(
                      "Anthony Clifford",
                      style: TextStyle(fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Frontend Developer,UI/UX Designer",
                      style: TextStyle(fontSize: 10, fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Graphics Designer",
                      style: TextStyle(fontSize: 10, fontWeight: FontWeight.w900),
                    ),SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Icon(Icons.star,color: Colors.yellow.shade800,size: 15,),
                      Icon(Icons.star,color: Colors.yellow.shade800,size: 15,),
                      Icon(Icons.star,color: Colors.yellow.shade800,size: 15,),
                      Icon(Icons.star,color: Colors.yellow.shade800,size: 15,),
                      Icon(Icons.star,color: Colors.grey.withOpacity(0.6),size: 15,),
                        SizedBox(width: 2,),
                        Text("4.5",style: TextStyle(color: Colors.yellow.shade800,fontWeight: FontWeight.bold,fontSize: 10),),SizedBox(width: 2,),
                        Text("(18 reviews)",style: TextStyle(color: Colors.grey,fontSize: 10,fontWeight: FontWeight.bold),)
                    ],),
                      SizedBox(
                        height: 5,),

                      Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 120,
                          height: 20,
                          decoration: BoxDecoration(
                              boxShadow: [BoxShadow(color: Colors.black)]),
                          child: RaisedButton(color: Colors.white,
                              onPressed: () {},
                              child: Text(
                                "Edit Profile",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              )),
                        ),
                        Container(
                            width: 120,
                            height: 20,
                            decoration: BoxDecoration(
                                boxShadow: [BoxShadow(color: Colors.black,)]),
                            child: RaisedButton(color: Colors.white,
                                onPressed: () {},
                                child: Text(
                                  "View As Guest",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                )))
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Container(width: 130,height: 60,
                  child: Card(
                    child: Row(
                      children: [
                        Image.asset("assets/images/hat.png",width: 40,height: 40,),SizedBox(height: 5,),
                        Column(mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Statistics",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color: Colors.black),),
                            Text("Your activity overview",style: TextStyle(color: Colors.grey,fontSize: 8,fontWeight: FontWeight.bold),)
                          ],)
                      ],),
                  ),
                ),
                Container(width: 130,height: 60,
                  child: Card(
                    child: Row(
                      children: [
                        Image.asset("assets/images/star1.png",width: 40,height: 45,),
                        Column(mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Reviews",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color: Colors.black),),
                            Text("Your overall rating",style: TextStyle(color: Colors.grey,fontSize: 8,fontWeight: FontWeight.bold),)
                          ],)
                      ],),
                  ),
                )
              ],)
,

              SizedBox(height: 10,),
             Column(
               children: [
                 ListView1(title: "Dashboard"),
                 SizedBox(height:2),
                 ListView1(title: "Profile"),
                 SizedBox(height:2),
                 ListView1(title: "My Orders"),
                 SizedBox(height: 2,),
                 ListView1(title: "My Deals"),
                 SizedBox(height: 2,),
                 ListView1(title: "My Projects"),
                 SizedBox(height: 2,),
                 ListView1(title: "My Project Bids"),
                 SizedBox(height: 2,),
                 ListView1(title: "Favourite"),
                 SizedBox(height: 2,),
               ],
             ),
   SizedBox(height: 10,),
   Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
     children: [
     RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomLock()));},
       child: Container(height: 30,width: 50,
         decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),),
         child: Center(child: Text("Lock",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)),),),
     RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomRelock()));},
       child: Container(height: 30,width: 50,
         decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),),
         child: Center(child: Text("Relock",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)),),),
     RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomPassword()));},
       child: Container(height: 30,width: 50,
         decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),),
         child: Center(child: Text("Reset",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)),),)
   ],)

            ],
          ),
        ),
      ),
    );
  }
}
