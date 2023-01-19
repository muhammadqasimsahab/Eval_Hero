import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFieldWidget extends StatelessWidget {
  //final TextEditingController textEditingController;
  final bool ispasword;
  final String hintText;
  // final TextInputType textInputType;
  const TextFieldWidget({Key? key,
    //required this.textEditingController,
    this.ispasword = false,
    required this.hintText,
    // required this.textInputType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final inputBorder = OutlineInputBorder(
      borderSide: Divider.createBorderSide(context),
      borderRadius: BorderRadius.circular(10)
    );
    return TextField(
      //controller: textEditingController,
      decoration: InputDecoration(
        fillColor: Color(0xffF6F8FE),
        hintText: hintText,
        hintStyle: GoogleFonts.montserrat(
          fontSize: 16,
          color: Color(0xffF6F8F)
        ),
        //border: inputBorder,
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

class EcoTextField extends StatefulWidget {
  String? hintText;
  TextEditingController? controller;
  String? Function(String?)? validate;
  Widget? icon;
  bool isPassword;
  bool check;
  final TextInputAction? inputAction;
  final FocusNode? focusNode;
  EcoTextField({
    this.hintText,
    this.controller,
    this.validate,
    this.isPassword=false,
    this.icon,
    this.check=false,
    this.inputAction,
    this.focusNode,
  });
  @override
  State<EcoTextField> createState() => _EcoTextFieldState();
}
class _EcoTextFieldState extends State<EcoTextField> {

  bool visible=false;

  @override
  Widget build(BuildContext context) {

    return Container(
        decoration: BoxDecoration(
          color: Color(0xffF6F8FE),
            borderRadius: BorderRadius.circular(10),
          // border: Border.all(width: 0.05,)

        ),
        child: TextField(
          focusNode: widget.focusNode,
          textInputAction: widget.inputAction,
          obscureText: widget.isPassword==false?false:widget.isPassword,
          // controller: widget.controller,
          // validator: widget.validate,
          decoration: InputDecoration(
            fillColor: Color(0xffF6F8FE),
            contentPadding: EdgeInsets.only(left: 21,top: 18,bottom: 14),
            hintText: widget.hintText??"hint Text",
            suffixIcon: widget.icon,
            border: InputBorder.none,
            focusedBorder: OutlineInputBorder(
                borderSide: Divider.createBorderSide(context),
                borderRadius: BorderRadius.circular(10)
            ),
            enabledBorder:  OutlineInputBorder(
                borderSide: Divider.createBorderSide(context),
                borderRadius: BorderRadius.circular(10)
            ),
            filled: true,
          ),
        )
    );
  }
}




