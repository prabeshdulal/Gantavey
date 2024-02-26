import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gantabya/features/Authentication/screens/add_destination.dart';
import 'package:gantabya/features/Authentication/screens/emergency_contacts.dart';
import 'package:gantabya/features/Authentication/screens/home_page.dart';

class HomeBottomBar extends StatefulWidget {
  const HomeBottomBar({Key? key}) : super(key: key);

  @override
  State<HomeBottomBar> createState() => _HomePageState();
}

class _HomePageState extends State<HomeBottomBar> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    AddDestination(),
    EmergencyContacts(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Add Destination',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_emergency_rounded),
            label: 'Emergency',
          ),
        ],
      ),
    );
  }
}