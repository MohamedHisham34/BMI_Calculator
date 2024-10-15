// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundFloatingButton extends StatelessWidget {
  const RoundFloatingButton({
    required this.onPressed,
    required this.icon,
    super.key,
  });

  final Function onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        shape: CircleBorder(),
        child: Icon(icon),
        onPressed: () {
          onPressed();
        });
  }
}
