import 'package:flutter/material.dart';
import 'package:shariful_firebase/helper/custom_button.dart';

class CustomTextField extends StatefulWidget {
  TextEditingController emailController;
  String labelText;
  String hintText;
  bool obsecureVal;
   CustomTextField({Key? key,
    required this.emailController,
     required this.labelText,
     required this.hintText,
     required this.obsecureVal
   }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}
String pass="";
class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 28.0,
      left: 28),
      child: TextFormField(
        validator: (value){
          bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
              .hasMatch(value!);
          if(value==null||value!.isEmpty){
            return"This field can not be empty";
          }
          if(widget.labelText=="Email"){
            if(!emailValid){
              return "Invalid email format";
            }
          }
          if(widget.labelText=="Password"){
            pass= value;
            if(value.length<6){
              return "Password must be at least 6 character";
            }
          }
          if(widget.labelText=="Confirm Password"){
            if(pass!=value){
              return"Password didn't match";
            }
          }
        },
        obscureText: widget.obsecureVal,
        cursorColor: allColor.appColor,
        controller: widget.emailController,
        decoration: InputDecoration(
          hintText: widget.hintText,
          labelText: widget.labelText,
          labelStyle: TextStyle(
            color: allColor.appColor
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: allColor.appColor
            )
          )
        ),
      ),
    );
  }
}
