import 'package:flutter/material.dart';

import 'main_page.dart';

class MainDrawer extends StatefulWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  int currentTab = 0;
  // ignore: non_constant_identifier_names
  void CurrentTab(BuildContext context, currentTab) {
    if (currentTab == 0) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => MainPage(currentSelected: 0),
        ),
      );
    }
    if (currentTab == 1) {
      Navigator.of(context).pop();
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => MainPage(currentSelected: 1),
          ));
    }
    if (currentTab == 2) {
      Navigator.of(context).pop();
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => MainPage(currentSelected: 2)));
    }
    if (currentTab == 3) {
      Navigator.of(context).pop();
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => MainPage(currentSelected: 3),
          ));
    }
    if (currentTab == 4) {
      Navigator.of(context).pop();
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => MainPage(currentSelected: currentTab),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20.0),
            color: Theme.of(context).primaryColor,
            child: Center(
              child: Column(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIQND6lOovzDcBzCIYL-eKPi4n2bQLEWP46g&usqp=CAU',
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "RAJAN",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text(
              'HOME',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              CurrentTab(context, currentTab = 0);
            },
          ),
          ListTile(
            leading: Icon(Icons.tv),
            title: Text(
              'CHANNELS',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              CurrentTab(context, currentTab = 1);
            },
          ),
          ListTile(
            leading: Icon(Icons.monochrome_photos_outlined),
            title: Text(
              'Interview',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              CurrentTab(context, currentTab = 2);
            },
          ),
          ListTile(
            leading: Icon(Icons.mic),
            title: Text(
              'Poacast',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              CurrentTab(context, currentTab = 3);
            },
          ),
          ListTile(
            leading: Icon(Icons.language),
            title: Text(
              'Language',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              CurrentTab(context, currentTab = 4);
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text(
              'setting',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
