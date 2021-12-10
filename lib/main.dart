import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/reels.dart';
import 'package:instagram_clone/screens/search.dart';
import 'package:instagram_clone/screens/shop.dart';

import 'screens/account.dart';
import 'screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        // primaryIconTheme: const IconThemeData(color: Colors.black)
      ),
      home: const Homepage(title: 'Instagram'),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;
  void _navigateBottomNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _children = [
    UserHome(),
    UserSearch(),
    UserReels(),
    UserShop(),
    UserAccount()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _children[_selectedIndex],
        // PageView(
        //   children: [
        //     Container(
        //       color: Colors.white,
        //       //child: SearchPage()
        //     ),
        //     Container(
        //       color: Colors.white,
        //       //   child: Uploader(),
        //     ),
        //     Container(
        //       color: Colors.white,
        //       // child: ActivityFeedPage()
        //     ),
        //   ],
        //  ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          onTap: _navigateBottomNavBar,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_call), label: 'reels'),
            BottomNavigationBarItem(icon: Icon(Icons.star), label: 'shop'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'account'),
          ],
        ));
  }
}
