import 'package:flutter/material.dart';

import '../shared/components/components.dart';

// class LogIn extends StatelessWidget {
//   const LogIn({Key? key}) : super(key: key);
//   @override
//   final bool hide_password = true;
//   Widget build(BuildContext context) {
//     return
//   }
// }

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  bool hide_password = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(alignment: Alignment.centerLeft, child: Text('Login')),
            DefultInput(
                suffix_Icon: Icon(Icons.face),
                fieldIcon: Icons.email,
                txt: 'Email'),
            SizedBox(
              height: 10.0,
            ),
            DefultInput(
              suffix_Icon: IconButton(
                  onPressed: () {
                    setState(() {
                      hide_password = !hide_password;
                    });
                  },
                  icon: hide_password
                      ? Icon(Icons.remove_red_eye)
                      : Icon(Icons.enhanced_encryption_rounded)),
              fieldIcon: Icons.password,
              txt: 'Password',
              hide_password: hide_password,
            ),
            SizedBox(
              height: 10.0,
            ),
            DefultBTN(txt: 'Enter')
          ],
        ),
      ),
    );
  }
}
