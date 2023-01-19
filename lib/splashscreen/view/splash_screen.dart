import 'dart:async';
import 'package:evalhero/login/view/login_Screen.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;




class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {


  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                LoginScreen()
            )
        )
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
             child: Stack(
               children: [
                  Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/img.png'),
                    )
                ),),
                  Positioned(
                     top: 40,
                    left: 55,
                    child: Container(
                        height: 90,
                        width: 90,
                        child: Image.asset('images/img_1.png')),
                    ),

                ],
              ),
            ),
            Container(
              width: 250,
              child: Image.asset('images/img_2.png'),
            ),


          ],
        ),
      ),
    );
  }
}
