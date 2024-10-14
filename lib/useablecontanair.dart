// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/cupertino.dart';

class Useablecontanair extends StatelessWidget {
  Useablecontanair(
      {super.key, required this.colour, this.Cardchild, required this.onPress});

  final Color colour;
  final Widget? Cardchild;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPress();
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: colour),
        alignment: Alignment.center,
        child: Cardchild,
        margin: EdgeInsets.all(8),
      ),
    );
  }
}
