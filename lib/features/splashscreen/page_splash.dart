import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transisi/features/splashscreen/controller_splash.dart';

class PageSplash extends GetView<ControllerSplash>{
  const PageSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/splash_logo.png',
              width: Get.width * 0.7,
            )
          ],
        ),
      ),
    );
  }
}