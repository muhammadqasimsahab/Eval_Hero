import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReuseText extends StatelessWidget {
  String text;
   ReuseText({Key? key,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,style: GoogleFonts.montserrat(
        color: Color.fromRGBO(0, 0, 0, 0.75),
        fontSize: 14,
        fontWeight: FontWeight.w500),
    );
  }
}
