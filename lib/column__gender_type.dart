// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/cupertino.dart';

class Column_GenderType extends StatelessWidget {
  Column_GenderType({
    super.key,
    required this.genderIcon,
    required this.gendertype,
  });

  final String gendertype;
  final IconData genderIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          genderIcon,
          size: 80,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          gendertype,
          style: TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}
