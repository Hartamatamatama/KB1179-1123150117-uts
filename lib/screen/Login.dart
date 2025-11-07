import 'package:flutter/material.dart';
import 'package:kb1179_1123150117_uts/main.dart';
import 'package:kb1179_1123150117_uts/screen/splash_screen_1.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                SizedBox(height: 10),
                Icon(Icons.lock_outlined, size: 80, color: Colors.deepPurple),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
