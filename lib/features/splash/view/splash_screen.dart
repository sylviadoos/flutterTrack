import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qwal_talabak_session1/features/splash/controller/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GetBuilder<SplashController>(
        init: SplashController(),
        builder: (context) {
          return Center(
            child: Image.asset('assets/images/logo.png',width: 211,height: 159,
            fit: BoxFit.fill,),

          );
        }
      ),
    );
  }
}
