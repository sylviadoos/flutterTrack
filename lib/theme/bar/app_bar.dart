import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qwal_talabak_session1/theme/app_colors/AppColors.dart';

Widget CustomAppbar({required title}) {
  return AppBar(
    flexibleSpace: Stack(
fit: StackFit.expand,
      children: [
        Image.asset('assets/images/appbar_bg.png',fit: BoxFit.fill,)
      ],
    ),
    toolbarHeight: 80,
    backgroundColor: Colors.black,
    leading: GestureDetector(
      onTap: (){
        Get.back();
      },
      child: CircleAvatar(
        backgroundColor: AppColors.backBg.withOpacity(0.1),
        radius: 20,
        child: Center(child: Icon(Icons.arrow_back_ios,color: Colors.white,size: 20,),),
      ),
    ),
    title: Text(
      title,
      style: TextStyle(color: Colors.white, fontSize: 20),
    ),
    centerTitle: true,
  );
}
