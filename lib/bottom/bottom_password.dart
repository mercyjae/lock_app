import 'package:flutter/material.dart';
import 'package:lock_app/widgets/password_reset.dart';



class BottomPassword extends StatefulWidget {
  const BottomPassword({Key? key}) : super(key: key);

  @override
  State<BottomPassword> createState() => _BottomPasswordState();
}

class _BottomPasswordState extends State<BottomPassword> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List _widgetOptions =[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Message',
      style: optionStyle,
    ),
    Text(
      'Index 2: Post',
      style: optionStyle,
    ),
    Text(
      'Index 3: Orders',
      style: optionStyle,
    ),
    PasswordReset()
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        //backgroundColor: Colors.grey,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.black,
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/icons/home.png")),
              title: Text('Home',)),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/icons/message1.png")),
              title: Text('Message')),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/icons/post_icon.png")),
              title: Text('Post')
          ),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/icons/bag.png"),color: Colors.black,),
              title: Text('Orders')
          ),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/icons/profile.png")),
              title: Text('Account')),
        ],

      ),
    );
  }
}
