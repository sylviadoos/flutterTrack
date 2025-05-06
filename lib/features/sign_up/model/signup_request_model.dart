import 'package:dio/dio.dart';

class SignUpRequest {
  final MultipartFile? image;
  final String fullName;
  final String phone;
  final String email;
  final String password;
  final String passwordConfirm;
  final String gender;
  final String type;
  final String date_of_birth;
  final String bio;
  final String working_from_hour;
  final String working_to_hour;
  final String address;
  final String longitude;
  final String latitude;
  final String fcmToken;
  final String facebookLink;
  final String instagramLink;

  SignUpRequest({required this.image,required this.fullName,
      required this.phone,
    required this.email,
    required this.password,
    required this.passwordConfirm,
    required this.gender,
    required  this.type,
    required  this.date_of_birth,
    required  this.bio,
    required this.working_from_hour,
    required this.working_to_hour,
    required this.address,
    required   this.longitude,
    required  this.latitude,
    required this.fcmToken,
    required this.facebookLink,
    required this.instagramLink});


  FormData toFormData(){
    final Map<String, dynamic> data = {
      'name':fullName,
      'email':email,
      'phone':phone,
      'password':password,
      'confirm_password':passwordConfirm,
      'gender':gender,
      'type':type,
      'date_of_birth':date_of_birth,
      'bio':bio,
      'working_from_hour':working_from_hour,
      'working_to_hour':working_to_hour,
      'address':address,
      'longitude':longitude,
      'latitude':latitude,
      'fcmToken':fcmToken,
      'facebookLink':facebookLink,
      'instagramLink':instagramLink

    };

FormData formData =FormData.fromMap(data);
formData.fields.add(MapEntry('working_days[0]', 'null'));
if(image != null)
formData.files.add(MapEntry('logo',image!));

return formData;

  }
}