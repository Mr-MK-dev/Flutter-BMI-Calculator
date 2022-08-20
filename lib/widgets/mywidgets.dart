import 'package:flutter/material.dart';

// Widget SelectGender({
//   required Function() fun,
//   required String text,
//   required IconData myIcon,
//  required primaryColor,
//  bool isMale = true,
// }) =>
//     Expanded(
//       child: GestureDetector(
//         onTap: fun,
//         child: Container(
//           decoration: BoxDecoration(
//               color:primaryColor, borderRadius: BorderRadius.circular(30.0)),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [Icon(myIcon), Text(text)],
//           ),
//         ),
//       ),
//     );

Widget AddHeight(
      

        ) =>
    Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.amber[300],
            borderRadius: BorderRadius.circular(30.0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Height'.toUpperCase()),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                '180',
                style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.w600),
              ),
              Container(
                child: Text(
                  'cm',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600),
                ),
              )
            ]),
            Text('Slider'),
          ],
        ),
      ),
    );

Widget AddData({
  required String text,
  required String num,
}) =>
    Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.amber[300],
            borderRadius: BorderRadius.circular(30.0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text),
            Text(num),
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
                      onPressed: () {},
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
                      onPressed: () {},
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
    );
