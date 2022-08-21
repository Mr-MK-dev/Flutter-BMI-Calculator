import 'dart:math';

import 'package:flutter/material.dart';
import 'package:practise/layout/result.dart';

import '../shared/components/components.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calcultor'),
        centerTitle: true,
      ),
      body: TheBody(),
    );
  }
}

class TheBody extends StatefulWidget {
  const TheBody({Key? key}) : super(key: key);

  @override
  State<TheBody> createState() => _TheBodyState();
}

class _TheBodyState extends State<TheBody> {
  Color newColor = Colors.grey;
  Color primaryColor = Colors.blueGrey;
  bool isMale = true;
  double recentValue = 120.0;
  int weight = 160;
  int age = 45;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[500],
      child: Column(
        children: [
          Expanded(
              // flex: 1,
              child: Container(
                  padding: const EdgeInsets.all(15.0),
                  width: double.infinity,
                  // color: Colors.blue,
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isMale = true;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: isMale ? primaryColor : newColor,
                                borderRadius: BorderRadius.circular(30.0)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [Icon(Icons.male), Text('Male')],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 15.0),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isMale = false;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: isMale ? newColor : primaryColor,
                                borderRadius: BorderRadius.circular(30.0)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(Icons.female),
                                Text('Female')
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ))),
          Expanded(
              //     // flex: 1,
              child: Container(
                  // color: Colors.purple,
                  width: double.infinity,
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.amber[300],
                        borderRadius: BorderRadius.circular(30.0)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Height'.toUpperCase()),
                        Row(mainAxisAlignment: MainAxisAlignment.center,
                            // crossAxisAlignment: CrossAxisAlignment.baseline,
                            children: [
                              Text(
                                '${recentValue.round()}',
                                style: const TextStyle(
                                    fontSize: 35.0,
                                    fontWeight: FontWeight.w600),
                              ),
                              const Text(
                                'cm',
                                style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w600),
                              )
                            ]),
                        Slider(
                            value: recentValue,
                            onChanged: (value) {
                              setState(() {
                                recentValue = value;
                              });
                              print('😈${recentValue.round()}');
                              print('😎${value.round()}');
                            },
                            min: 80.0,
                            max: 200.0),
                      ],
                    ),
                  ))),
          Expanded(
              // flex: 1,
              child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(15.0),
                  // color: Colors.black87,
                  child: Row(children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.amber[300],
                            borderRadius: BorderRadius.circular(30.0)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Weight'),
                            Text('$weight'),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                      color: Colors.indigo,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15.0),
                                        topRight: Radius.circular(30.0),
                                        bottomLeft: Radius.circular(50.0),
                                        bottomRight: Radius.circular(1.0),
                                      )),
                                  child: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          weight++;
                                        });
                                      },
                                      icon: const Icon(
                                        Icons.add,
                                        color: Colors.pink,
                                      )),
                                ),
                                Container(
                                  decoration: const BoxDecoration(
                                      color: Colors.indigo,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30.0),
                                        topRight: Radius.circular(15.0),
                                        bottomLeft: Radius.circular(1.0),
                                        bottomRight: Radius.circular(50.0),
                                      )),
                                  child: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          weight--;
                                        });
                                      },
                                      icon: const Icon(
                                        Icons.remove,
                                        color: Colors.pink,
                                      )),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.amber[300],
                            borderRadius: BorderRadius.circular(30.0)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Age'),
                            Text('$age'),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                      color: Colors.indigo,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15.0),
                                        topRight: Radius.circular(30.0),
                                        bottomLeft: Radius.circular(50.0),
                                        bottomRight: Radius.circular(1.0),
                                      )),
                                  child: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          age++;
                                        });
                                      },
                                      icon: const Icon(
                                        Icons.add,
                                        color: Colors.pink,
                                      )),
                                ),
                                Container(
                                  decoration: const BoxDecoration(
                                      color: Colors.indigo,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30.0),
                                        topRight: Radius.circular(15.0),
                                        bottomLeft: Radius.circular(1.0),
                                        bottomRight: Radius.circular(50.0),
                                      )),
                                  child: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          age--;
                                        });
                                      },
                                      icon: const Icon(
                                        Icons.remove,
                                        color: Colors.pink,
                                      )),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ]))),
          DefultBTN(txt: 'Enter', upperCase: false, width: 300.0)
        ],
      ),
    );
  }
}
