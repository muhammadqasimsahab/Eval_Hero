import 'package:evalhero/homescreen/view/home_screen.dart';
import 'package:evalhero/utils/color.dart';
import 'package:evalhero/Widget/reuse_text.dart';
import 'package:evalhero/signup/view/signup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Widget/reuse_row.dart';
import '../../selection/view/selection_screen.dart';
import '../widget/text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  FocusNode? passwordfocus;
  bool ispassword=true;
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
                    title: 'Login to your account',
            ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Image.asset("images/img_2.png",
                height: 35,
                  width: 100,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(padding: EdgeInsets.only(left: 44,right: 44),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left: 9),
                      child: ReuseText(
                        text: 'Username',
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    TextFieldWidget(
                      // textInputType: TextInputType.name,
                      hintText: '',),
                    Padding(
                      padding:  EdgeInsets.only(left: 9,top: 30),
                      child: ReuseText(
                        text: 'Password',
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    EcoTextField(
                      focusNode: passwordfocus,
                      isPassword: ispassword,
                      hintText: "",
                      icon: IconButton(onPressed: (){
                        setState(() {
                          ispassword=!ispassword;
                        });
                      },icon: ispassword?Icon(Icons.visibility):Icon(Icons.visibility_off),
                      ),
                    ),
                  ],
                ),
              
              ),
              SizedBox(
                height: 11,
              ),

              //Forgot password
              Padding(
                padding: const EdgeInsets.only(right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(" "),
                    Text("Forgot password?",
                    style: GoogleFonts.montserrat(color: ColorWidget.redcolor,
                    fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),

              //Login Button
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SelectionScreen ()));
                },
                child: Center(
                  child: Container(
                    height: 52,
                    width: 286,
                    decoration: BoxDecoration(
                      color: ColorWidget.redcolor,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(child: Text("Login",style: GoogleFonts.montserrat(
                        color: Color(0xffFFFFFF),
                    fontWeight: FontWeight.w700
                    ),)),
                  ),
                ),
              ),

              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24,right: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Color(0xff000000),
                      ),
                    ),
                    SizedBox(width: 5),
                    Text(
                      'OR',
                      style: GoogleFonts.inter(color: Color.fromRGBO(0, 0, 0, 0.75),
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(width: 5),
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Color(0xff000000),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 58,
              ),
              Center(
                child: Container(
                  height: 52,
                  width: 286,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color(0xff22356B),
                      width: 1,
                    )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset("images/google.png",
                      height: 33,
                        width: 33,
                      ),
                      Text("Continue with Google",style: GoogleFonts.montserrat(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff000000)
                      ),)
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 37,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account? ",style:GoogleFonts.montserrat(
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w600,
                      fontSize: 15
                    ),),

                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
                      },
                      child: Text("Sign Up",style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        color: ColorWidget.redcolor,
                        decoration: TextDecoration.underline,
                      ),),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 37,
              ),


            ],
          ),
        ),
      ),
    );
  }
}
