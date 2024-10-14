// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:BMI_Calculator/column__gender_type.dart';
import 'package:BMI_Calculator/useablecontanair.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const Color mainColor = Colors.grey;
const Color SelectedColor = Colors.green;
const String Mohamed = "Mohamed";

bool maleisPressed = false;
bool femaleisPressed = false;

enum genders { male, female }

void selectgender(genders genderType) {
  if (genderType == genders.male) {
    maleisPressed = !maleisPressed;
    femaleisPressed = false;
  } else if (genderType == genders.female) {
    femaleisPressed = !femaleisPressed;
    maleisPressed = false;
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
                  onPress: () {
                    setState(() {
                      selectgender(genders.male);
                    });
                  },
                  Cardchild: Column_GenderType(
                      genderIcon: FontAwesomeIcons.mars, gendertype: "MALE"),
                  colour: maleisPressed ? SelectedColor : mainColor,
                ),
              ),
              Expanded(
                child: Useablecontanair(
                    onPress: () {
                      setState(() {
                        selectgender(genders.female);
                      });
                    },
                    Cardchild: Column_GenderType(
                        genderIcon: FontAwesomeIcons.venus,
                        gendertype: "FEMALE"),
                    colour: femaleisPressed ? SelectedColor : mainColor),
              ),
            ],
          )),
          Expanded(
              child: Useablecontanair(
            onPress: () {},
            colour: mainColor,
          )),
          Expanded(
            child: Useablecontanair(
              onPress: () {},
              colour: mainColor,
            ),
          ),
        ],
      )),
    );
  }
}
