import 'package:coffea_shop_app/models/coffee_shop.dart';
import 'package:coffea_shop_app/pages/homepage.dart';
import 'package:coffea_shop_app/pages/intropage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: ((context) => CoffeeShop()),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IntroPage(),
      ),
    );
  }
}
