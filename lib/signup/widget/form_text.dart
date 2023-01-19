import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FormText extends StatelessWidget {
  String text;
  FormText({Key? key,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,style: GoogleFonts.montserrat(
        fontSize: 12,
        letterSpacing: 0.005,
        color: Color(0xff78828A),
        fontWeight: FontWeight.w500),
    );
  }
}
