import 'package:cheap_charly/appColors/app_colors.dart';
import 'package:cheap_charly/screens/category/category_screen.dart';
import 'package:cheap_charly/screens/homepage/home_page.dart';
import 'package:cheap_charly/screens/profilescreen/profile_screen.dart';
import 'package:cheap_charly/screens/wishList/wish_list_screen.dart';
import 'package:cheap_charly/screens/yourbag/your_bag_screen.dart';
import 'package:custom_navigator/custom_scaffold.dart';

import 'package:flutter/material.dart';

/// This is the stateful widget that the main application instantiates.
class MyBottomBar extends StatefulWidget {
  @override
  State<MyBottomBar> createState() => _MyBottomBarState();
}

/// This is the private State class that goes with MyBottomBar.
class _MyBottomBarState extends State<MyBottomBar> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    CategoryScreen(),
    YourBagScreen(),
    WishListScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      children: _widgetOptions,
      onItemTap: _onItemTapped,
      scaffold: Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: AppColors.baseGrey40Color,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.grid_view),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedIconTheme: IconThemeData(
            color: AppColors.baseDarkPinkColor,
          ),
          // selectedItemColor: AppColors.baseDarkPinkColor,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
