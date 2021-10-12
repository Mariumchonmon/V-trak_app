
import 'package:flutter/material.dart';
class NavigationBar extends StatefulWidget {

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int _currentIndex = 0;
  final tabs = [
    Center(child: Text('Map'),),
    Center(child: Text('List'),),
    Center(child: Text('History'),),
    Center(child: Text('Report'),),
    Center(child: Text('Alert'),),
    Center(child: Text('Logout'),),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: InkWell(
        splashColor: Colors.green, // splash color
        onTap: () {}, //
        child: BottomNavigationBar(
          currentIndex: 0,
          type: BottomNavigationBarType.shifting,
          selectedItemColor: Colors.orange.shade700,
          iconSize: 40,
          unselectedItemColor: Colors.orange.shade700,
          showUnselectedLabels: true,

          elevation: 5,
          items:  <BottomNavigationBarItem>[

        BottomNavigationBarItem(
        icon: Image.asset('assets/images/Rectangle 20.png', width: 30,),
        title: Text('Map', style: TextStyle(fontWeight: FontWeight.w700,),),
        // backgroundColor: Colors.orange,
    ),
    BottomNavigationBarItem(
    icon: Image.asset('assets/images/Rectangle 21.png', width: 30,),
        title: Text('List', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 15),),
    ),
    BottomNavigationBarItem(
    icon: Image.asset('assets/images/Rectangle 26.png', width: 30,),
        title: Text('History', style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15)),),
    BottomNavigationBarItem(
    icon: Image.asset('assets/images/Rectangle -2.png', width: 30,),
        title: Text('Report', style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15 ),),
    ),
    BottomNavigationBarItem(
    icon: Image.asset('assets/images/Rectangle -1.png', width: 30,),
        title: Text('Alert', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 15),),
    ),
    BottomNavigationBarItem(
    icon: Image.asset('assets/images/Rectangle 16.png', width: 30,),
        title: Text('Logout', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 15),),
    ),
    ],
    onTap: (index){
    setState(() {
    _currentIndex = index;
    });
    },
    ),
      ),
    );
  }
}