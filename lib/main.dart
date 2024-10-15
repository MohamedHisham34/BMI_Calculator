// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:BMI_Calculator/calculator_functions.dart';
import 'package:BMI_Calculator/column__gender_type.dart';
import 'package:BMI_Calculator/result_page.dart';
import 'package:BMI_Calculator/round_floating_button.dart';
import 'package:BMI_Calculator/useablecontanair.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const Color mainColor = Colors.grey;
const Color SelectedColor = Colors.green;
const String Mohamed = "Mohamed";
int height = 150;
int weight = 60;
int Age = 15;
IconData IconPlus = FontAwesomeIcons.plus;
IconData IconMinus = FontAwesomeIcons.minus;
bool maleisPressed = false;
bool femaleisPressed = false;

enum genders { male, female }

double bmireuslt = 0;

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
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
              Cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "HEIGHT",
                    style: TextStyle(fontSize: 30),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        height.toString(),
                        style: TextStyle(
                            fontSize: 50, fontWeight: FontWeight.bold),
                      ),
                      Text("cm")
                    ],
                  ),
                  Slider(
                    value: height.toDouble(),
                    onChanged: (value) {
                      setState(() {
                        height = value.round();
                      });
                    },
                    min: 120,
                    max: 230,
                    activeColor: Colors.green,
                    inactiveColor: Colors.black,
                  )
                ],
              ),
              onPress: () {},
              colour: mainColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Useablecontanair(
                    Cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "WEIGHT",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          weight.toString(),
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundFloatingButton(
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                icon: IconMinus),
                            SizedBox(
                              width: 20,
                              height: 20,
                            ),
                            RoundFloatingButton(
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                icon: IconPlus),
                          ],
                        ),
                      ],
                    ),
                    colour: mainColor,
                    onPress: () {},
                  ),
                ),
                Expanded(
                  child: Useablecontanair(
                    Cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Age",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          Age.toString(),
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundFloatingButton(
                                onPressed: () {
                                  setState(() {
                                    Age--;
                                  });
                                },
                                icon: IconMinus),
                            SizedBox(
                              width: 20,
                              height: 20,
                            ),
                            RoundFloatingButton(
                                onPressed: () {
                                  setState(() {
                                    Age++;
                                  });
                                },
                                icon: IconPlus),
                          ],
                        ),
                      ],
                    ),
                    colour: mainColor,
                    onPress: () {},
                  ),
                )
              ],
            ),
          ),
          MaterialButton(
            onPressed: () {
              Calculator_Brain calculator_brain =
                  Calculator_Brain(height: height, weight: weight);
              String bmireuslt = calculator_brain.bmicalculation();
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ResultsPage(bmiResult: bmireuslt)),
              );
            },
            child: Text(
              "CALCULATE",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
