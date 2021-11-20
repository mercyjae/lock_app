import 'package:flutter/material.dart';
import 'package:lock_app/bottom/bottom_lock_.dart';
import 'package:lock_app/bottom/bottom_profile.dart';
import 'package:lock_app/widgets/profile.dart';


void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
        home:BottomProfile());
  }
}