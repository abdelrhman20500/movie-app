import 'package:flutter/material.dart';
import 'package:movie_app/ui/screen/tabs/browser_tab/browser_tab.dart';
import 'package:movie_app/ui/screen/tabs/home_tab/home_tab.dart';
import 'package:movie_app/ui/screen/tabs/search_tab/search_tab.dart';
import 'package:movie_app/ui/screen/tabs/watchList_tab/watchList_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const String routeName = "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex =0 ;
  List<Widget>tabs =[
    HomeTab(),
    SearchTab(),
    BrowserTab(),
    WatchListTab()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[currentIndex],
      bottomNavigationBar: Theme(
        data: ThemeData(canvasColor: const Color(0xff707070)),
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index)
          {
            currentIndex=index;
            setState(() {});
          },
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.white,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "HOME"),
            BottomNavigationBarItem(icon: Icon(Icons.search),label: "SEARCH"),
            BottomNavigationBarItem(icon: Icon(Icons.browser_not_supported),label: "BROWSER"),
            BottomNavigationBarItem(icon: Icon(Icons.branding_watermark),label: "WATCHLIST"),
          ],
        ),
      ),
    );
  }
}
