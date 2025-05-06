import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:qwal_talabak_session1/main.dart';

abstract class DioHelper{
  Future<dynamic>post({
    String? endPoint,
    String? baseUrl,
    dynamic data,
    String? token   ,
     bool? isMultiPart =false
});


}
class DioImpl extends DioHelper{
final Dio dio = Dio(
  // BaseOptions(
  //   baseUrl:
  // )
);

  @override
  Future<dynamic> post({String? endPoint, String? baseUrl, data, String? token,bool? isMultiPart}) async{
    dio.options.headers={
      if(isMultiPart!) 'Content-Type':'multipart/form-data;',
      if(!isMultiPart) 'Content-Type':'application/json',
     if  (getStorage.read('token') != null ) 'token':getStorage.read('token')

    };
    log("BaseUrl:${baseUrl}");
    log("Body:${data.toString()}");

    dio.options.baseUrl=baseUrl!;
    try{
    var res= await dio.post(
        endPoint!,data:data
    );
    log("Response:${res.toString()}");

    return res;}
    on DioException catch (e) {
     return e.response;
}
}

}