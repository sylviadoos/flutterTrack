import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qwal_talabak_session1/features/sign_up/controller/signup_controller.dart';

import '../../../theme/app_colors/AppColors.dart';
import '../../../theme/bar/app_bar.dart';
import '../../../theme/widgets/text_field_form.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: GetBuilder<SignUpController>(
            init: SignUpController(),
            builder: (controller) {
              return Form(
                key: controller.formSignUp,
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      child: Container(
                          height: MediaQuery.sizeOf(context).height * 0.17,
                          width: MediaQuery.sizeOf(context).width,
                          child: CustomAppbar(title: 'إنشاء حساب')),
                    ),
                    Positioned.fill(
                      top: MediaQuery.sizeOf(context).height * .13,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                topLeft: Radius.circular(20))),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 30,
                            ),
                            Expanded(
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    TextFieldComonent(

                                      controller: controller.nameController,
                                      hint: 'أدخل الإسم بالكامل',
                                      isMandatory: true,

                                    ),
                                    TextFieldComonent(
                                      controller: controller.emailController,
                                      hint: 'أدخل البريد الإلكترونى',
                                      isMandatory: false,
                                      validator:
                                          controller.emailValidationFunction,
                                    ),
                                    ElevatedButton(
                                        onPressed: () {
                                          if (controller
                                              .formSignUp.currentState!
                                              .validate()) {
                                            controller.signUp();
                                          }
                                        },
                                        child: Text('signUp'))
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              );
            }));
  }
}
