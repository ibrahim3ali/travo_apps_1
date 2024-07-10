import 'package:flutter/material.dart';

import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';



import '../../widget/home_widget/home_page_widget/home_page_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _currentIndex = 0;

  bool isActive = false;
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: const SafeArea(
          child: TabBarView(
            children: [
              HomePageWidget(),
            ],
          ),
        ),
        bottomNavigationBar: SalomonBottomBar(
          currentIndex: _currentIndex,
          onTap: (i) => setState(() => _currentIndex == i),
          items: [
            SalomonBottomBarItem(
              icon: const Icon(Icons.home),
              title: const Text("Home"),
              selectedColor: Colors.purple,
            ),
            SalomonBottomBarItem(
              icon: const Icon(Icons.favorite_border),
              title: const Text("Likes"),
              selectedColor: Colors.pink,
            ),
            SalomonBottomBarItem(
              icon: const Icon(Icons.card_travel_sharp),
              title: const Text("briefcase"),
              selectedColor: Colors.orange,
            ),
            SalomonBottomBarItem(
              icon: const Icon(Icons.person),
              title: const Text("Profile"),
              selectedColor: Colors.teal,
            ),
          ],
        ),
      ),
    );
  }
}

