import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';
import 'package:qwal_talabak_session1/features/sign_up/model/signup_request_model.dart';
import 'package:dio/dio.dart' as multiPart;
import '../repo/signup_repo.dart';


class SignUpController extends GetxController{
  TextEditingController nameController =TextEditingController();
  TextEditingController emailController =TextEditingController();

  Rxn<File?>img=Rxn();
  GlobalKey<FormState> formSignUp=GlobalKey();
 // RxBool? x=false.obs;
  String? emailValidationFunction(String? email) {
    if (email == '') {
      return "من فضلك ادخل بريد إلكترونى";
    } else if (!email!.contains('@') && !email.contains('.')) {
      return 'بريد إلكترونى غير صحيح';
    } else {
      return null;
    }
  }
signUp() async {
  var response=await SignUpRepo().signUp(
    SignUpRequest(fullName: nameController.text, phone: '1234567899',
        email: 'email@gmail.com', password: '123456',
        passwordConfirm: '123456',
        gender: 'MALE',
        type: 'client', date_of_birth: '2020-10-10',
        bio: 'bio', working_from_hour: '12',
        working_to_hour: '12',
        address: 'address',
        longitude: '1234.44',
        latitude: '1223.55',
        fcmToken: 'fcmToken',
        facebookLink: 'facebookLink',
        instagramLink: 'instagramLink',

        image:img.value != null ?multiPartImage(img.value) :null)
  );
if(response['status']){
  Get.snackbar('Success', 'تم التسجيل بنجاح');
 // Get.toNamed(page)
}else{
  Get.snackbar('Faild', response['message'].toString(),snackPosition: SnackPosition.BOTTOM,backgroundColor: Colors.redAccent);

}
  print('controller.response'+response.toString());
}
multiPartImage(File? img) async {
    print('img'+img.toString());
    if(img != null){
 multiPart.MultipartFile mFile= await multiPart.MultipartFile.fromFile(
    img.path,
    filename: basename(img.path),
  );
return mFile;}
}
pickImage() async {

  final ImagePicker picker = ImagePicker();
// Pick an image.
  final XFile? image = await picker.pickImage(source: ImageSource.gallery);
   if(image != null){
     img.value=File(image.path);
     update();
   }

}
}