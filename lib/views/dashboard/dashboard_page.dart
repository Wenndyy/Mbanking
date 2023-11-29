import 'package:flutter/material.dart';
import 'package:project_dicoding/views/home/home_page.dart';
import 'package:project_dicoding/views/profile/profile_page.dart';

class DashboardPage extends StatefulWidget {
  final String username;
  final String password;
  const DashboardPage(
      {super.key, required this.username, required this.password});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions(String username, String password) => [
        HomePage(
          username: username,
          password: password,
        ),
        ProfilePage(
          username: username,
        ),
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
        child: _widgetOptions(widget.username, widget.password)
            .elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.deepPurpleAccent,
        onTap: _onItemTapped,
      ),
    );
  }
}
