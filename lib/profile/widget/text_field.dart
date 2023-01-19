import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String hintText;
  const TextFieldWidget({Key? key,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final inputBorder = OutlineInputBorder(
      borderSide: Divider.createBorderSide(context),
      borderRadius: BorderRadius.circular(24)
    );
    return Container(
      height: 52,
      width: 327,
      child: TextField(
        //controller: textEditingController,
        decoration: InputDecoration(
          fillColor: Color(0xffF6F8FE),
          hintText: hintText,
          //border: inputBorder,
          focusedBorder: inputBorder,
      enabledBorder:  inputBorder,
      filled: true,
          contentPadding: EdgeInsets.only(left: 21,top: 18,bottom: 14),
        ),
        // keyboardType: textInputType,
      ),
    );
  }
}




