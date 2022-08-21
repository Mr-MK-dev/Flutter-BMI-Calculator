import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Result extends StatelessWidget {
  @required
  var age;
  @required
  double result;
  @required
  double hight;
  Result({required this.age, required this.hight, required this.result});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("The result"),
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(color: Colors.pink),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Age : $age'),
              Text('BMI : ${result.round()}'),
              Text('Height : ${hight.round()}'),
            ],
          ),
        ),
      ),
    );
  }
}
