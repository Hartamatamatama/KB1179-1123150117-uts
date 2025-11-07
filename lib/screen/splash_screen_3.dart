import 'package:flutter/material.dart';
import 'package:kb1179_1123150117_uts/main.dart';
import 'package:kb1179_1123150117_uts/screen/splash_screen_3.dart';

class SplashScreen3 extends StatelessWidget {
  const SplashScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            SizedBox(height: 50),
            Container(
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.deepPurple,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/image3.png'),
                ),
              ),
            ),
            //tambahkan disini untuk widget widget lainnya nanti
            SizedBox(height: 30),
            Text(
              'Welcome',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              textAlign: TextAlign.center,
              'Don\'t worry! we got your cover. Use Wallie instead of cash!',
              style: TextStyle(fontSize: 20, color: Colors.grey[700]),
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.deepPurple,
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Colors.deepPurple,
                    ),
                    elevation: MaterialStateProperty.resolveWith<double>((
                      states,
                    ) {
                      return states.contains(MaterialState.pressed) ? 2.0 : 8.0;
                    }),
                    padding: MaterialStateProperty.resolveWith<EdgeInsetsGeometry>((
                      states,
                    ) {
                      // slightly reduce vertical padding when pressed to give "pressed-in" look
                      return states.contains(MaterialState.pressed)
                          ? EdgeInsets.symmetric(
                              horizontal: 50.0,
                              vertical: 12.0,
                            )
                          : EdgeInsets.symmetric(
                              horizontal: 50.0,
                              vertical: 15.0,
                            );
                    }),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    overlayColor: MaterialStateProperty.resolveWith<Color?>((
                      states,
                    ) {
                      if (states.contains(MaterialState.pressed))
                        return Colors.black.withOpacity(0.12);
                      return null;
                    }),
                    shadowColor: MaterialStateProperty.all(
                      Colors.deepPurpleAccent,
                    ),
                  ),
                  child: Text(
                    'Continue',
                    style: TextStyle(fontSize: 18.0, color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(height: 70),
          ],
        ),
      ),
    );
  }
}
