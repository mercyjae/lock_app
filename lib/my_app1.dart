import 'package:flutter/material.dart';
import 'package:lock_app/widgets/lock_app.dart';


class MyApp1 extends StatefulWidget {
  @override
  _MyApp1 createState() => _MyApp1();
}

class _MyApp1 extends State<MyApp1> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
       // backgroundColor: Colors.grey,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.black,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        currentIndex: _selectedIndex, //현재 선택된 Index
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
      title: Text('Home',),
            icon: ImageIcon(AssetImage("assets/icons/home.png")),
          ),
          BottomNavigationBarItem(
          title: Text('Message',),
              icon: ImageIcon(AssetImage("assets/icons/message1.png")),
          ),
          BottomNavigationBarItem(
            title: Text('Post',),
            icon: ImageIcon(AssetImage("assets/icons/post_icon.png")),
          ),
          BottomNavigationBarItem(
          title: Text('Orders',),
            icon: ImageIcon(AssetImage("assets/icons/bag.png"),),
          ),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/icons/profile.png")),
              title: Text('Account',)),
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }

  List _widgetOptions = [
    Text(
      'Index 0: Home',
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    ),
    Text(
      'Index 1: Message',
      style:TextStyle(fontSize: 30, fontWeight: FontWeight.bold)
    ),
    Text(
      'Index 2: Post',
      style:TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    ),
    Text(
      'Index 3: Orders',
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    ),
    LockApp()
  ];
}


