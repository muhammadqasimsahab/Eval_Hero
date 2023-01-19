import 'package:evalhero/selection/view/selection_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/color.dart';
import '../../Widget/reuse_row.dart';
import '../../Widget/reuse_row.dart';
import '../../Widget/reuse_text.dart';
import '../../login/widget/text_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  FocusNode? passwordfocus;
  FocusNode? retypepasswordfocus;
  bool ispassword=true;
  bool isretypepassword=true;
  bool formStateLoading=false;
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
                  title: 'Create an account',
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
                        text: 'Email',
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    TextFieldWidget(
                      // textInputType: TextInputType.name,
                      hintText: 'Enter Email',
                    ),
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
                    Padding(
                      padding:  EdgeInsets.only(left: 9,top: 30),
                      child: ReuseText(
                        text: 'Confirm password',
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    EcoTextField(
                      validate: (v){
                        if(v!.isEmpty){
                          return "password should not be empty";
                        }
                        return null;
                      },
                      isPassword: isretypepassword,

                      hintText: "",
                      icon: IconButton(onPressed: (){
                        setState(() {
                          isretypepassword=!isretypepassword;
                        });
                      },icon: isretypepassword?Icon(Icons.visibility):Icon(Icons.visibility_off),
                      ),
                    ),

                  ],
                ),

              ),
              SizedBox(
                height: 96,
              ),
              //Login Button
              Center(
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SelectionScreen()));
                  },
                  child: Container(
                    height: 52,
                    width: 286,
                    decoration: BoxDecoration(
                        color: ColorWidget.redcolor,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(child: Text("Sign in",style: GoogleFonts.montserrat(
                        color: Color(0xffFFFFFF),
                        fontSize: 18,
                        fontWeight: FontWeight.w700
                    ),)),
                  ),
                ),
              ),
              SizedBox(
                height: 94,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
