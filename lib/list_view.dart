import 'package:flutter/material.dart';

class ListView1 extends StatelessWidget {
  const ListView1({Key? key,required this.title})
      : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return  Container(
      margin: EdgeInsets.fromLTRB(22, 0, 22, 0),
      height: 40,
      child: Material(
        elevation: 1.2,
        child: ListTile(
          leading: Text(title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0),),
          trailing: IconButton(onPressed: (){},
            icon: Icon(Icons.arrow_forward_ios_sharp,size: 18,color: Colors.black,),
          padding: EdgeInsets.fromLTRB(5, 0, 0, 6),),),
      ),
    );
  }
}
