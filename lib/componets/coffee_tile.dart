import 'package:flutter/material.dart';

import '../models/coffee.dart';

class CoffeeTile extends StatelessWidget {
  final Coffee coffee;
  void Function()? onPressed;
  CoffeeTile({Key? key, required this.coffee, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.grey[200]),
      child: ListTile(
        leading: Image.asset(
          coffee.img,
        ),
        title: Text(coffee.name),
        subtitle: Text(coffee.prize),
        trailing: IconButton(
          icon: Icon(Icons.add),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
