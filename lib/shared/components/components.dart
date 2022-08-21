import 'package:flutter/material.dart';

Widget DefultInput({
  bool hide_password = false,
  required txt,
  required IconData fieldIcon,
 required Widget suffix_Icon,
}) =>
    Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 1.0),
          borderRadius: BorderRadius.all(
            Radius.circular(15.0),
          ),
        ),
        child: TextFormField(
            obscureText: hide_password,
            decoration: InputDecoration(
              border: InputBorder.none,
              label: Text(txt),
              prefixIcon: Icon(fieldIcon),
              suffixIcon: suffix_Icon != null ? suffix_Icon : null,
            )));

Widget DefultBTN({
  double width = double.infinity,
  double height = 40.0,
  required String txt,
  bool upperCase = true,
}) =>
    Container(
        // margin: EdgeInsets.only(top: 10.0),
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
        child: ElevatedButton(
            onPressed: () {},
            child: Text(
              upperCase ? txt.toUpperCase() : txt,
              style: TextStyle(color: Colors.white),
            )));
