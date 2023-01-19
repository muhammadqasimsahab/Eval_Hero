import 'package:evalhero/form1/view/form1_screen.dart';
import 'package:evalhero/form3/view/form3_screen.dart';
import 'package:evalhero/fto/view/fto_screen.dart';
import 'package:evalhero/homescreen/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../dashbord/view/dashbord_screen.dart';
import '../../trainee_dashbord/view/trainee_dashbord.dart';
import '../../utils/color.dart';
import '../../utils/color.dart';
import '../../Widget/reuse_row.dart';

class SelectionScreen extends StatefulWidget {
  const SelectionScreen({Key? key}) : super(key: key);

  @override
  _SelectionScreenState createState() => _SelectionScreenState();
}

class _SelectionScreenState extends State<SelectionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 11,top: 20),
                child: Row(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 48,
                        width: 48,
                        decoration: BoxDecoration(
                          color: Color(0xffFEFEFE),
                            borderRadius: BorderRadius.circular(200),
                            border: Border.all(
                              color: Color(0xffE3E7EC),
                              width: 0.5,
                            )
                        ),
                        child: Center(
                          child: Container(
                            child: Image.asset("images/arrow_back.png",
                              height: 16.5,
                              width: 13.55,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 29,
                    ),
                    Container(
                      child: Image.asset("images/img_2.png",
                         height: 36,
                         width: 150,

                      ),
                    ),

                  ],
                ),
              ),

              SizedBox(
                height: 62,
              ),
              Center(child: Text("How you want to proceed?",
              style: GoogleFonts.montserrat(
                  fontSize: 24,fontWeight: FontWeight.w700),
              )),
              SizedBox(
                height: 69,
              ),
              Wrap(
                children:
                [
                  Center(
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                      },
                      child: Container(
                        height: 63,
                        width: 251,
                        decoration: BoxDecoration(
                            color: ColorWidget.redcolor,
                            borderRadius: BorderRadius.circular(40)
                        ),
                        child: Center(child: Text("Shift Trainer",style: GoogleFonts.plusJakartaSans(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.005,
                          color: Color(0xffFFFFFF)
                        ),)),
                      ),
                    ),
                  ),
                ]
              ),
              SizedBox(
                height: 45,
              ),
              Wrap(
                  children:
                  [
                    Center(
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>TraineeDashbord()));
                        },
                        child: Container(
                          height: 63,
                          width: 251,
                          decoration: BoxDecoration(
                              color: ColorWidget.redcolor,
                              borderRadius: BorderRadius.circular(40)
                          ),
                          child: Center(child: Text("Shift trainer officer",style: GoogleFonts.plusJakartaSans(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.005,
                              color: Color(0xffFFFFFF)
                          ),)),
                        ),
                      ),
                    ),
                  ]
              ),
              SizedBox(
                height: 45,
              ),

              Wrap(
                  children:
                  [
                    Center(
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Form3Screen()));
                        },
                        child: Container(
                          height: 63,
                          width: 251,
                          decoration: BoxDecoration(
                              color: ColorWidget.redcolor,
                              borderRadius: BorderRadius.circular(40)
                          ),
                          child: Center(child: Text("Trainee",style: GoogleFonts.plusJakartaSans(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.005,
                              color: Color(0xffFFFFFF)
                          ),)),
                        ),
                      ),
                    ),
                  ]
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
