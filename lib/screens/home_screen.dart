import 'package:assessment1/core/colors.dart';
import 'package:assessment1/screens/screen1.dart';
import 'package:assessment1/screens/screen2.dart';
import 'package:flutter/material.dart';

class HomeScreen1 extends StatefulWidget {
  const HomeScreen1({super.key});

  @override
  State<HomeScreen1> createState() => _HomeScreen1State();
}

class _HomeScreen1State extends State<HomeScreen1> {
  int _selectedIndex = 3;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: backgroundcolour,
        leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new_rounded),
            onPressed: () {}),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu_rounded),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: _selectedIndex == 3 ? const Screen1() : const Screen2(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: backgroundcolour,
        unselectedItemColor: kGreycolor,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              size: 35,
              Icons.bar_chart_rounded,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              size: 35,
              Icons.monetization_on_rounded,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              size: 35,
              Icons.shield_rounded,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              size: 35,
              Icons.person_rounded,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              size: 35,
              Icons.settings,
            ),
          ),
        ],
      ),
    );
  }
}
