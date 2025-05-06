import 'package:flutter/material.dart';
import 'package:qwal_talabak_session1/theme/app_colors/AppColors.dart';

class TextFieldComonent extends StatefulWidget {
   TextFieldComonent({super.key,required this.controller,this.textInputType
     ,required this.hint,required isMandatory, validator});
   TextEditingController controller;
   TextInputType? textInputType=TextInputType.name;
   String hint;
   bool? isMandatory;
    String? Function(String? value)? validator;




  @override
  State<TextFieldComonent> createState() => _TextFieldComonentState();
}

class _TextFieldComonentState extends State<TextFieldComonent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: TextFormField(
        controller: widget.controller,
        keyboardType: widget.textInputType,
        validator:widget.validator ,
        decoration: InputDecoration(
          hintText: widget.hint,
          border:OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            borderSide: BorderSide(
              color: AppColors.greyBorder,
              width: 1
            )
          ),
          enabledBorder:OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              borderSide: BorderSide(
                  color: AppColors.primaryColor,
                  width: 1
              )
          ),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              borderSide: BorderSide(
                  color: Colors.red,
                  width: 1
              )
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              borderSide: BorderSide(
                  color: AppColors.primaryColor,
                  width: 1
              )
          ),

        ),
      ),
    );
  }
}
