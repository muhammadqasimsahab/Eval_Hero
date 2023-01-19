import 'package:flutter/material.dart';

class ReusbleContainer extends StatelessWidget {
  String text;
  ReusbleContainer({Key? key ,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Padding(padding: EdgeInsets.all(15),
      child:
      Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff2E3C59),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(child: Text(text,style: TextStyle(
            color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15
        ),)
        ),
      ),

    );
  }
}