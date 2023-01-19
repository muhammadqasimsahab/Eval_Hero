import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Widget/reuse_row.dart';
import '../widget/reuse_container.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
                  title: 'Setting',
                ),
              ),
              SizedBox(
                height: 59,
              ),
              ReuseContainer(
                text: 'Notifications',
                image: 'images/img_7.png',
              ),
              SizedBox(
                height: 21,
              ),
              ReuseContainer(
                text: 'Privacy',
                image: 'images/img_8.png',
              ),
              SizedBox(
                height: 21,
              ),
              ReuseContainer(
                text: 'Log out',
                image: 'images/img_9.png',
              ),
              SizedBox(
                height: 32,
              ),
              Text("Help",style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w700,
                fontSize: 18,
                color: Color(0xff000000),
              ),),
              SizedBox(
                height: 26,
              ),
              ReuseContainer(
                text: 'FAQ',
                image: 'images/img_10.png',
              ),
              SizedBox(
                height: 21,
              ),
              ReuseContainer(
                text: 'Contact support',
                image: 'images/img_11.png',
              ),
              SizedBox(
                height: 21,
              ),
              ReuseContainer(
                text: 'Our privacy policey',
                image: 'images/img_12.png',
              ),

            ],
          ),
        ),
      ),
    );
  }
}
