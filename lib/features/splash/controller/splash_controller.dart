import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qwal_talabak_session1/features/sign_up/view/sign_up_screen.dart';
import 'package:qwal_talabak_session1/routes/app_pages.dart';

class SplashController extends GetxController{



  @override
  void onInit() {
    Timer(Duration(seconds: 5),() => Get.offAndToNamed(AppRoutes().signUp));
    super.onInit();
  }



}