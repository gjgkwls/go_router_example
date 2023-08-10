import 'package:flutter/material.dart';
import 'package:go_router_example/screens/search_screen.dart';

import '../models/main_page_type.dart';
import '../widgets/appbar/main_bottom_navigation_bar.dart';
import 'home_screen.dart';
import 'interest_restaurants_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  MainPage _currentPage = MainPage.home;

  void _selectPage(MainPage page) => setState(() => _currentPage = page);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: MainBottomNavigationBar(
          currentPage: _currentPage,
          onSelectPage: (page) => _selectPage(page),
        ),
        body: switch (_currentPage) {
          MainPage.home => const HomeScreen(),
          MainPage.search => const SearchScreen(),
          MainPage.interest => const InterestRestaurantsScreen(),
          MainPage.myInfo => const InterestRestaurantsScreen(),
        });
  }
}
