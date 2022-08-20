import 'dart:math';

import 'package:flutter/material.dart';
import 'package:practise/screens/result.dart';
import 'package:practise/widgets/mywidgets.dart';

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
      body: const TheBody(),
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
  var recentValue = 120.0;
  var weight = 160;
  var age = 45;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            flex: 1,
            child: Container(
                padding: EdgeInsets.all(15.0),
                width: double.infinity,
                color: Colors.blue,
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
                            children: [Icon(Icons.male), Text('Male')],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 15.0),
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
                            children: [Icon(Icons.female), Text('Female')],
                          ),
                        ),
                      ),
                    )
                  ],
                ))),
        Expanded(
            flex: 1,
            child: Container(
                color: Colors.purple,
                width: double.infinity,
                padding: const EdgeInsets.all(15.0),
                child: Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.amber[300],
                        borderRadius: BorderRadius.circular(30.0)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Height'.toUpperCase()),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '${recentValue.round()}',
                                style: TextStyle(
                                    fontSize: 35.0,
                                    fontWeight: FontWeight.w600),
                              ),
                              Container(
                                child: Text(
                                  'cm',
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w600),
                                ),
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
                  ),
                ))),
        Expanded(
            flex: 1,
            child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(15.0),
                color: Colors.black87,
                child: Row(children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.amber[300],
                          borderRadius: BorderRadius.circular(30.0)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Weight'),
                          Text('${weight}'),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
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
                                    icon: Icon(
                                      Icons.add,
                                      color: Colors.pink,
                                    )),
                              ),
                              Container(
                                decoration: BoxDecoration(
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
                                    icon: Icon(
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
                  SizedBox(
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
                          Text('Age'),
                          Text('$age'),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
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
                                    icon: Icon(
                                      Icons.add,
                                      color: Colors.pink,
                                    )),
                              ),
                              Container(
                                decoration: BoxDecoration(
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
                                    icon: Icon(
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
        Container(
          width: double.infinity,
          height: 50.0,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Result(
                          age: age,
                          hight: recentValue,
                          result: (weight / pow(recentValue, 2) * 1000))));
              // print('ji');
            },
            child: Text('Enter'),
          ),
        ),
      ],
    );
  }
}
