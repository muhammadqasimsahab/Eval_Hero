
import 'package:flutter/material.dart';

import '../../Widget/reuse_row.dart';

class FtoScreen extends StatefulWidget {
  const FtoScreen({Key? key}) : super(key: key);

  @override
  _FtoScreenState createState() => _FtoScreenState();
}

class _FtoScreenState extends State<FtoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: ReusbleRow(
                  image1: "images/arrow_back.png",
                  title: 'FTO Program SOP',
                ),
              ),
              Container(
                child: Image.asset("images/fto_1.png",
                ),
              ),
              Container(
                child: Image.asset("images/fto_2.png",
                ),
              ),
              Container(
                child: Image.asset("images/fto_3.png",
                ),
              ),
              Container(
                child: Image.asset("images/fto_4.png",
                ),
              ),
              Container(
                child: Image.asset("images/fto5.png",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
