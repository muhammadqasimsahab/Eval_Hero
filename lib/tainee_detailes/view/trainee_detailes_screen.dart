import 'package:evalhero/homescreen/model.dart';
import 'package:evalhero/homescreen/widget/drawer.dart';
import 'package:evalhero/profile/view/profile_screen.dart';
import 'package:evalhero/trainee_dashbord/class.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../homescreen/class.dart';
import '../../homescreen/model.dart';



class TraineeDetailesScreen extends StatelessWidget {
  final AllDataModel allDataModel;
  const TraineeDetailesScreen({Key? key,required this.allDataModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
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
              width: 20,
            ),
          ],
        ),
        drawer: DrawerScreen(),
        body: SingleChildScrollView(
          child: SafeArea(
           child: Column(
             children: [
               SizedBox(
                 height: 49,
               ),
               Padding(
                 padding: const EdgeInsets.only(left: 20,right: 20),
                 child: Card(
                       elevation: 3,
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(25),
                       ),
                       child: ListTile(
                         title: Container(
                           height: 367,
                           child: Padding(
                             padding: const EdgeInsets.only(left: 10,top: 17,right: 10),
                             child: Column(
                               children: [
                                 Row(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     Container(
                                       height:45,
                                       width: 45,
                                       decoration: BoxDecoration(
                                           borderRadius: BorderRadius.circular(10),
                                           image: DecorationImage(
                                             image: AssetImage(allDataModel.imageurl),
                                           )
                                       ),

                                     ),
                                     SizedBox(
                                       width: 20,
                                     ),
                                     Column(
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         Text(
                                           allDataModel.name,
                                           style: GoogleFonts.montserrat(
                                             fontWeight: FontWeight.w700,
                                             fontSize: 16,
                                           ),
                                         ),
                                         Text(
                                           allDataModel.traine,style: GoogleFonts.montserrat(
                                           fontWeight: FontWeight.w400,
                                           fontSize: 14,
                                         ),
                                         ),
                                         SizedBox(
                                           height: 32,
                                         ),
                                         Text(
                                           allDataModel.evalution,style: GoogleFonts.montserrat(
                                           fontWeight: FontWeight.w500,
                                           fontSize: 14,
                                         ),
                                         ),

                                       ],
                                     ),

                                   ],
                                 ),
                                 SizedBox(
                                   height: 17,
                                 ),
                                 Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     Row(
                                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                       children: [
                                         Text(
                                           "Date of Eval",style: GoogleFonts.montserrat(
                                             fontWeight: FontWeight.w500,
                                             fontSize: 14,
                                             color: Color(0xff78828A)
                                         ),
                                         ),
                                         SizedBox(
                                           width: 40,
                                         ),
                                         Text(
                                           allDataModel.data_of_eval,style: GoogleFonts.montserrat(
                                             fontWeight: FontWeight.w500,
                                             fontSize: 14,
                                             color: Color(0xff78828A)
                                         ),
                                         ),
                                       ],
                                     ),
                                     SizedBox(
                                       height: 17,
                                     ),
                                     Row(
                                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                       children: [
                                         Text(
                                           "Examiner",style: GoogleFonts.montserrat(
                                             fontWeight: FontWeight.w500,
                                             fontSize: 14,
                                             color: Color(0xff78828A)
                                         ),
                                         ),
                                         SizedBox(
                                           width: 40,
                                         ),
                                         Text(
                                           allDataModel.examiner,style: GoogleFonts.montserrat(
                                             fontWeight: FontWeight.w500,
                                             fontSize: 14,
                                             color: Color(0xff78828A)
                                         ),
                                         ),
                                       ],
                                     ),
                                     SizedBox(
                                       height: 17,
                                     ),
                                     Row(
                                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                       children: [
                                         Text(
                                           "Scene size up",style: GoogleFonts.montserrat(
                                             fontWeight: FontWeight.w500,
                                             fontSize: 14,
                                             color: Color(0xff78828A)
                                         ),
                                         ),
                                         SizedBox(
                                           width: 40,
                                         ),
                                         Text(
                                           allDataModel.Scene_size_up,style: GoogleFonts.montserrat(
                                             fontWeight: FontWeight.w500,
                                             fontSize: 14,
                                             color: Color(0xff78828A)
                                         ),
                                         ),
                                       ],
                                     ),
                                     SizedBox(
                                       height: 17,
                                     ),
                                     Row(
                                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                       children: [
                                         Text(
                                           "PRIMARY SURVEY",style: GoogleFonts.montserrat(
                                             fontWeight: FontWeight.w500,
                                             fontSize: 14,
                                             color: Color(0xff78828A)
                                         ),
                                         ),
                                         SizedBox(
                                           width: 40,
                                         ),
                                         Text(
                                           allDataModel.PRIMARY_SURVEY,style: GoogleFonts.montserrat(
                                             fontWeight: FontWeight.w500,
                                             fontSize: 14,
                                             color: Color(0xff78828A)
                                         ),
                                         ),
                                       ],
                                     ),
                                     SizedBox(
                                       height: 17,
                                     ),
                                     Row(
                                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                       children: [
                                         Text(
                                           "REASSESSMENT",style: GoogleFonts.montserrat(
                                             fontWeight: FontWeight.w500,
                                             fontSize: 14,
                                             color: Color(0xff78828A)
                                         ),
                                         ),
                                         SizedBox(
                                           width: 40,
                                         ),
                                         Text(
                                           allDataModel.REASSESSMENT,style: GoogleFonts.montserrat(
                                             fontWeight: FontWeight.w500,
                                             fontSize: 14,
                                             color: Color(0xff78828A)
                                         ),
                                         ),
                                       ],
                                     ),
                                     SizedBox(
                                       height: 17,
                                     ),
                                     Row(
                                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                       children: [
                                         Text(
                                           "Total",style: GoogleFonts.montserrat(
                                             fontWeight: FontWeight.w500,
                                             fontSize: 14,
                                             color: Color(0xff78828A)
                                         ),
                                         ),
                                         SizedBox(
                                           width: 40,
                                         ),
                                         Text(
                                           allDataModel.Total,style: GoogleFonts.montserrat(
                                             fontWeight: FontWeight.w500,
                                             fontSize: 14,
                                             color: Color(0xff78828A)
                                         ),
                                         ),
                                       ],
                                     ),
                                     SizedBox(
                                       height: 17,
                                     ),

                                   ],
                                 ),
                               ],
                             ),
                           ),
                         ),
                       ),

                 ),
               ),
             ],
           ),),)
      );
  }
}
