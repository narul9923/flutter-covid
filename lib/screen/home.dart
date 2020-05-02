import 'package:flutter/material.dart';
import 'package:peludi_covid/screen/dashboard.dart';
import 'package:peludi_covid/screen/donasi.dart';
import 'package:peludi_covid/screen/news.dart';
import 'package:peludi_covid/screen/setting.dart';
import 'package:peludi_covid/widget/card.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{
  TabController controller;

  @override
  void initState() { 
    super.initState();
    controller = TabController(length: 4, vsync: this);
  }

  int _selectedTabIndex = 0;

  void _onNavBarTapped(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  final _bottomNavBarItems = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      title: Text('Home'),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.new_releases),
      title: Text('News'),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.drag_handle),
      title: Text("Donasi"),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.settings),
      title: Text("Setting"),
    )
  ];

  final _listPage = <Widget>[
    Dashboard(),
    News(),
    Donasi(),
    Setting(),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          _listPage[_selectedTabIndex]
        ],
      ),
      // bottomNavigationBar: TabBar(
      //   controller: controller,
      //   tabs: <Widget>[
      //     Tab(icon: Icon(Icons.home, color: Colors.greenAccent,),),
      //     Tab(icon: Icon(Icons.home, color: Colors.greenAccent,),),
      //     Tab(icon: Icon(Icons.home, color: Colors.greenAccent,),),
      //     Tab(icon: Icon(Icons.home, color: Colors.greenAccent,),),
      //   ],
      // ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Theme.of(context).colorScheme.primary,
          primaryColor: Theme.of(context).colorScheme.primary,
          textTheme: Theme.of(context).textTheme.copyWith(caption: TextStyle(color: Theme.of(context).textTheme.title.color)),
        ),
        child: BottomNavigationBar(
          items: _bottomNavBarItems,
          onTap: _onNavBarTapped,
          currentIndex: _selectedTabIndex,
        ),
        // items: _bottomNavBarItems,
        // currentIndex: _selectedTabIndex,
        // selectedItemColor: Colors.blueAccent,
        // unselectedItemColor: Colors.grey,
        // onTap: _onNavBarTapped,
      ),
    );
  }
}

