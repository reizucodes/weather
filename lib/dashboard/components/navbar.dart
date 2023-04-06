import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  @override
  State<NavBar> createState() => NavBarState();
}

class NavBarState extends State<NavBar> {
  int selected = 0;
  void onItemTap(int index) {
    setState(() {
      selected = index;
      print(index);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: selected,
          onTap: onItemTap,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: '',
            ),
          ]),
    );
  }
}
