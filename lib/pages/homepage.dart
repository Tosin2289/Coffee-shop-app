import 'package:coffea_shop_app/componets/bottom_nav_bar.dart';
import 'package:coffea_shop_app/const.dart';
import 'package:coffea_shop_app/pages/cart_page.dart';
import 'package:coffea_shop_app/pages/shop_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedindex = 0;
  void NavigateBottomBar(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  final List<Widget> _pages = [Shop(), Cart()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => NavigateBottomBar(index),
      ),
      body: _pages[_selectedindex],
    );
  }
}
