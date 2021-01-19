import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentInd = 0;
  final List<Widget> _children = [
    Center(
      child: Text("This is Home Screen"),
    ),
    Center(
      child: Text("This is Profile Screen"),
    ),
  ];

  void _onTabTaped(int index) {
    setState(() {
      _currentInd = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation"),
      ),
      body: _children[_currentInd],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onTabTaped,
        currentIndex: _currentInd,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded, color: Colors.lightBlue,),
            title: Text("Home", style: TextStyle(color: Colors.lightBlue),),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.lightBlue,),
            title: Text("Profile", style: TextStyle(color: Colors.lightBlue),),
          ),
        ],
      ),
    );
  }
}
