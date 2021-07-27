import 'package:flutter/material.dart';
import 'drawer.dart';
import 'home_page.dart';
import 'channels_page.dart';
import 'interview_page.dart';
import 'package:mvt/podcast_page.dart';

// ignore: must_be_immutable
class MainPage extends StatefulWidget {
  //late int currentTab ;
  //late int index;
  int currentSelected = 0;

  MainPage({required this.currentSelected});

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // late int currentTab=0;
  // final PageStorageBucket bucket = PageStorageBucket();
  // Widget currentScreen = Home_Page();
  // List<Widget> _widgetOptions = <Widget>[
  //   Home_Page(),
  //   Channels_Page(),
  //   Interview_Page(),
  //   Podcast_Page()
  // ];
  int _currentSelected = 0;

  void _onItemTapped(int index) {
    setState(() {
      widget.currentSelected = index;
      _currentSelected = widget.currentSelected;
      print("raj $_currentSelected");
    });
    print("rajjjannn $_currentSelected");
  }

  void initState() {
    _onItemTapped(widget.currentSelected);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'MVT',
          style: TextStyle(
              color: Colors.orange,
              fontSize: 30.0,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [Icon(Icons.search, color: Colors.black)],
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      drawer: MainDrawer(),
      body: Scaffold(
        body: IndexedStack(
          index: widget.currentSelected,
          children: [
            for (final tabItem in TabNavigationItems.items) tabItem.page,
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            // ignore: deprecated_member_use
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tv),
            // ignore: deprecated_member_use
            title: Text('Channels'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.monochrome_photos_outlined),
            // ignore: deprecated_member_use
            title: Text('Interview'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mic),
            // ignore: deprecated_member_use
            title: Text('podcast'),
          ),
        ],
        onTap: _onItemTapped,
        currentIndex: _currentSelected,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.orange,
      ),
    );
  }
}

class TabNavigationItems {
  final Widget page;
  final Widget title;
  final Icon icon;
  TabNavigationItems(
      {required this.page, required this.title, required this.icon});

  static List<TabNavigationItems> get items => [
        TabNavigationItems(
          page: Home_Page(),
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        TabNavigationItems(
          page: Channels_Page(),
          icon: Icon(Icons.tv),
          title: Text('Channels'),
        ),
        TabNavigationItems(
          page: Interview_Page(),
          icon: Icon(Icons.monochrome_photos_outlined),
          title: Text('Interview'),
        ),
        TabNavigationItems(
          page: Podcast_Page(),
          icon: Icon(Icons.mic),
          title: Text('podcast'),
        ),
      ];
}
