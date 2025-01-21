import 'package:flutter/material.dart';
import '../widgets/bottomNavBar/discover.dart';
import '../widgets/bottomNavBar/matches.dart';
import '../widgets/bottomNavBar/messages.dart'; 
import '../widgets/bottomNavBar/profile.dart';

class MainPage extends StatefulWidget{
  const MainPage({super.key});
  @override
  MainPageState createState()=> MainPageState();
}

class MainPageState extends State<MainPage>{
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    Discover(),
    Matches(),
    Messages(),
    Profile(),
  ];
  @override
  Widget build (BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Flexible(child: _pages[_selectedIndex]),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (int index){
          setState(() => _selectedIndex = index);
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.pages),
            label: 'Discover', 
          ),
          BottomNavigationBarItem(icon: Icon(Icons.monitor_heart_outlined),
            label: 'Matches'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Messages'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.male),
            label: 'Profile'
          ),
        ],
        unselectedItemColor: Colors.blueGrey,
        selectedItemColor: Colors.redAccent,
      ),
    );
  }
}