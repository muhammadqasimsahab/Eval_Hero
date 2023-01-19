import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReuseContainer extends StatelessWidget {
  String text;
  final image;
  ReuseContainer({Key? key ,required this.text,this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 45,
      width: 301,
      decoration: BoxDecoration(
        color: Color(0xffF6F8FE),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16,top: 9,bottom: 13),
            child: Container(
              child: Image.asset(image,
                height: 24,
                width: 23,
                // color: Color(0xff000000),
              ),
            ),
          ),
          SizedBox(
            width: 16,
          ),
          Text(text,style: GoogleFonts.montserrat(
              color: Color(0xff000000),
              fontWeight: FontWeight.w700,
              fontSize: 16
          ),),
        ],
      ),
    );
  }
}