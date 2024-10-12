// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const Color mainColor = Colors.grey;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: Useablecontanair(
                  Cardchild: Column_GenderType(
                      genderIcon: FontAwesomeIcons.mars, gendertype: "MALE"),
                  colour: mainColor,
                ),
              ),
              Expanded(
                  child: Useablecontanair(
                Cardchild: Column_GenderType(
                    genderIcon: FontAwesomeIcons.venus, gendertype: "FEMALE"),
                colour: mainColor,
              )),
            ],
          )),
          Expanded(
              child: Useablecontanair(
            colour: mainColor,
          )),
          Expanded(
            child: Useablecontanair(
              colour: mainColor,
            ),
          ),
        ],
      )),
    );
  }
}

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

class Useablecontanair extends StatelessWidget {
  Useablecontanair({super.key, required this.colour, this.Cardchild});
  final Color colour;
  final Widget? Cardchild;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(20), color: colour),
      alignment: Alignment.center,
      child: Cardchild,
      margin: EdgeInsets.all(8),
    );
  }
}
