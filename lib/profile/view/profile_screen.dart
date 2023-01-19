import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../Widget/reuse_row.dart';
import '../../Widget/reuse_text.dart';
import '../widget/text_field.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
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
                  title: 'Profile',
                ),
              ),
              SizedBox(
                height: 28,
              ),
              Container(
                height: 110,
                width: 110,
                child: CircleAvatar(
                  backgroundImage: AssetImage("images/img_6.png"),
                )
              ),
              SizedBox(
                height: 10,
              ),
              Text("Change profile picture",
              style: GoogleFonts.montserrat(
                color: Color(0xff22356B),
                fontSize: 14,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.005,
                decoration: TextDecoration.underline,
              ),
              ),
              SizedBox(
                height: 19,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:  EdgeInsets.only(left: 20),
                    child: ReuseText(
                      text: 'Name',
                    ),
                  ),
                  TextFieldWidget(
                    hintText: '',

                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left: 20),
                    child: ReuseText(
                      text: 'Email',
                    ),
                  ),
                  TextFieldWidget(
                    hintText: '',

                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left: 20),
                    child: ReuseText(
                      text: 'Contact',
                    ),
                  ),
                  TextFieldWidget(
                    hintText: '',

                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left: 20),
                    child: ReuseText(
                      text: 'Date of Birth',
                    ),
                  ),
                  TextFieldWidget(
                    hintText: '',

                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left: 20),
                    child: ReuseText(
                      text: 'Country',
                    ),
                  ),
                  TextFieldWidget(
                    hintText: '',

                  ),
                  SizedBox(
                    height: 55,
                  ),

                ],
              ),
              Container(
                height: 52,
                width: 148,
                decoration: BoxDecoration(
                    color: Color(0xff22356B),
                  borderRadius: BorderRadius.circular(24)
                ),
                child: Center(child: Text("Save",
                style: GoogleFonts.montserrat(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.005,
                  color: Color(0xffFFFFFF)
                ),
                )),
              ),
              SizedBox(
                height: 36,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
