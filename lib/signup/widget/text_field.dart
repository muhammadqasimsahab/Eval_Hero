import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final bool ispasword;
  final String hintText;
  const TextFieldWidget({Key? key,
    this.ispasword = false,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final inputBorder = OutlineInputBorder(
      borderSide: Divider.createBorderSide(context),
      borderRadius: BorderRadius.circular(10)
    );
    return TextField(
      decoration: InputDecoration(
        fillColor: Color(0xffF6F8FE),
        hintText: hintText,
        focusedBorder: inputBorder,
    enabledBorder:  inputBorder,
    filled: true,
        contentPadding: EdgeInsets.only(left: 21,top: 18,bottom: 14),
      ),
      // keyboardType: textInputType,
      obscureText: ispasword,
    );
  }
}




