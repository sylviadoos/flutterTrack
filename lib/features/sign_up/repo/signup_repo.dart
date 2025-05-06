import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:qwal_talabak_session1/endPoints/endPoints.dart';
import 'package:qwal_talabak_session1/features/sign_up/model/signup_request_model.dart';
import 'package:qwal_talabak_session1/main.dart';

import '../../../network/dio_helper.dart';

class SignUpRepo{
  Future<dynamic>signUp(SignUpRequest signUpRequest) async {
    DioImpl dioImpl = DioImpl();
    var response =await dioImpl.post(
      baseUrl: EndPoints.baseUrl,
      endPoint:EndPoints.signUp ,
      data:signUpRequest.toFormData(),
      isMultiPart: true

    );
    if(response.data['status'] =='Success'){
      getStorage.write('token', response.data['token']);
      getStorage.write('name', response.data['user']['name']);

      return{'status':true,'message':'Successfully'};
    }else{
      return{'status':false,'message':response.data['errors']};

    }
log('response:'+response.toString());
  }

}