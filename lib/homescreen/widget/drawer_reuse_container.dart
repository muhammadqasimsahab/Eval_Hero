import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerReuseContainer extends StatelessWidget {
  String text;
  DrawerReuseContainer({Key? key ,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Padding(padding: EdgeInsets.only(top: 7),
      child:
      Container(
        height: 50,
        width: 294,
        decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.circular(15),

        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 60,top: 15,bottom: 15),
          child: Text(text,style: GoogleFonts.montserrat(
            fontSize: 16,
            color: Color(0xff818181)
          ),),
        ),
      )

    );
  }
}