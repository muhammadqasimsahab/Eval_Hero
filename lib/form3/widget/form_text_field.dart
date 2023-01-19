import 'package:flutter/material.dart';

class FormTextField extends StatelessWidget {
  final String hintText;
  var suffixIcon;

   FormTextField({Key? key,
    required this.hintText,
     this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final inputBorder = OutlineInputBorder(
        borderSide: Divider.createBorderSide(context),
        borderRadius: BorderRadius.circular(24)
    );
    return Container(
      height: 52,
      child: TextField(
        decoration: InputDecoration(
          fillColor: Color(0xffF6F8FE),
          hintText: hintText,
          focusedBorder: inputBorder,
          enabledBorder:  inputBorder,
          filled: true,
          contentPadding: EdgeInsets.only(left: 21,top: 18,bottom: 14),
          suffixIcon:  suffixIcon,
        ),
      ),
    );
  }
}
