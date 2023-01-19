import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReusbleRow extends StatelessWidget {
  final  image1;
  String title;

  ReusbleRow({Key? key , this.image1,required this.title,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(left: 8),
      child:

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 48,
            width: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(200),
              border: Border.all(
                color: Color(0xffE3E7EC),
                width: 1,
              )
            ),
            child: Center(
              child: Container(
                child: Image.asset(image1,
                height: 16.5,
                width: 13.55,
                color: Color(0xff171725),
                ),
              ),
            ),
          ),
          // SizedBox(
          //   width: 19,
          // ),
          Text(title,style: GoogleFonts.montserrat(
              color: Color(0xff000000),
              fontSize: 20,
              fontWeight: FontWeight.w700),
          ),
          Text("             "),

        ],
      ),
    );
  }
}