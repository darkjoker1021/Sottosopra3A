import 'package:flutter/material.dart';
import 'package:ilsottosopra/setting_page.dart';

import 'account_page.dart';
import 'home_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int selectedIndex=0;

  List<Widget> screens=[
    HomePage(),
    SettingPage(),
    AccountPage(),
  ];

  void changeIndex(int index) {
    setState(() {
      selectedIndex=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Center(child: Image.asset("lib/assets/logo.png", width: 200,)),
        actions: [SizedBox(width: 50)],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: changeIndex,
        currentIndex: selectedIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Impostazioni"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account")
        ],
      ),
      body: screens.elementAt(selectedIndex),
    );
  }
}