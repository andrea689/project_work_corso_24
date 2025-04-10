import 'package:flutter/material.dart';
import 'package:wp_lesson_1/pages/home/home_page.dart';
import 'package:wp_lesson_1/pages/library/library_page.dart';
import 'package:wp_lesson_1/pages/search/search_page.dart';

class BottomNavigationContainer extends StatefulWidget {
  const BottomNavigationContainer({super.key});

  @override
  State<BottomNavigationContainer> createState() =>
      _BottomNavigationContainerState();
}

class _BottomNavigationContainerState extends State<BottomNavigationContainer> {
  int currentPageIndex = 2;

  @override
  Widget build(BuildContext context) {
    final pages = [
      HomePage(),
      SearchPage(),
      LibraryPage(),
    ];

    return Scaffold(
      body: pages[currentPageIndex],
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.search),
            label: 'Cerca',
          ),
          NavigationDestination(
            icon: Icon(Icons.library_books),
            label: 'Libreria',
          ),
        ],
      ),
    );
  }
}
