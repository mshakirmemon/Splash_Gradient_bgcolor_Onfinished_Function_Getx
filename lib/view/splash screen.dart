import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/splash.png")),
          gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                // Color.fromARGB(255, 118, 253, 125),
                Colors.blue.shade700,
                // Colors.black54,
                Color.fromARGB(255, 255, 255, 255),
                Colors.blue.shade700,
                // Colors.black54,
              ])),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: DefaultTextStyle(
        style: const TextStyle(
          fontSize: 50,
          fontFamily: 'Bobbers',
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.40,
            ),
            AnimatedTextKit(
              isRepeatingAnimation: false,
              onFinished: () {
                Get.to(WillPopScope(
                    child: HomePage(), onWillPop: () async => false));
              },
              animatedTexts: [
                TyperAnimatedText('Splash Screen With On Function',
                    speed: Duration(milliseconds: 200),
                    textStyle: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                            color: Colors.black.withOpacity(0.3),
                            offset: const Offset(5, 10),
                            blurRadius: 5),
                      ],
                    )),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
