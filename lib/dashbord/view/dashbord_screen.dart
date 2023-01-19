import 'package:evalhero/profile/view/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../dashbord_fiiled/view/dashbord_files_screen.dart';
import '../../form3/view/form3_screen.dart';
import '../../homescreen/widget/drawer.dart';

class DashbordScreen extends StatefulWidget {
  const DashbordScreen({Key? key}) : super(key: key);

  @override
  _DashbordScreenState createState() => _DashbordScreenState();
}

class _DashbordScreenState extends State<DashbordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.black,),
        title: Text("Dashboard",style: GoogleFonts.plusJakartaSans(
          color: Color(0xff000000),
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        ),
        actions: [
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ProfileScreen()));
            },
            child: CircleAvatar(
              backgroundImage: AssetImage("images/appbar_image.png",
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      drawer: DrawerScreen(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 66,
            ),
            Center(
              child: Container(
                height: 202,
                width: 315,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Color(0xffFFFFFF),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.25),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 33,
                    ),
                    Text("Evaluation form Available",style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Color(0xff000000)
                    ),),
                    SizedBox(
                      height: 28,
                    ),
                    Text("Click here to fill the form",style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Color(0xff000000)
                    ),),
                    SizedBox(
                      height: 28,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>DashbordFillesScreen()));
                      },
                      child: Container(
                        height: 41,
                        width: 108,
                        decoration: BoxDecoration(
                            color: Color(0xff22356B),
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Center(child: Text("Form",
                          style: GoogleFonts.montserrat(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              // letterSpacing: 0.005,
                              color: Color(0xffFFFFFF)
                          ),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 56,
            ),
            Center(
              child: Container(
                height: 202,
                width: 315,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Color(0xffFFFFFF),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.25),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 31,
                    ),
                    Text(" View Evaluation form  ",style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Color(0xff000000)
                    ),),
                    SizedBox(
                      height: 50,
                    ),
                    Text("Data unavailable",style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Color(0xff000000)
                    ),),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
