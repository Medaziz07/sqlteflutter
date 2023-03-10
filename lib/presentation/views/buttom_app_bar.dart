import 'package:new1/presentation/views/add_post_screen.dart';
import 'package:new1/presentation/views/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:new1/presentation/views/profile_screen.dart';

class BottomAppBarNavigation extends StatefulWidget {
  const BottomAppBarNavigation({super.key});

  @override
  State<BottomAppBarNavigation> createState() => _BottomAppBarNavigationState();
}

class _BottomAppBarNavigationState extends State<BottomAppBarNavigation> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const ProfileScreen(),
    const AddPostScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _selectedIndex, children: _widgetOptions),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline),
            label: 'Manage',
          )
        ],
        currentIndex: _selectedIndex,
        // selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
