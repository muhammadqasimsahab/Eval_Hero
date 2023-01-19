import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../signup/widget/form_text.dart';
import '../widget/form_text_field.dart';


class Form3Screen extends StatefulWidget {
  const Form3Screen({Key? key}) : super(key: key);

  @override
  _Form3ScreenState createState() => _Form3ScreenState();
}

class _Form3ScreenState extends State<Form3Screen> {

   String? valueChoose;
  List listItem = [
    "Abdominal","Altered LOC","Behavioral ","Chest Pain","Trauma","Respiratory",
    "Stroke ","Other"
  ];
   bool isChecked = false;
   bool _customTileExpanded = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.white;
      }
      return Colors.grey;
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 11),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Container(
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
                            child: Image.asset("images/arrow_back.png",
                              height: 16.5,
                              width: 13.55,
                              color: Color(0xff171725),
                            ),
                          ),
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   width: 19,
                    // ),
                    Flexible(
                      child: Text("Field Training Program Intern Evaluation Form",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                          color: Color(0xff000000),
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(
                height: 79,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24,right: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FormText(
                      text: 'Data',),
                    SizedBox(
                      height: 8,
                    ),
                    FormTextField(
                      hintText: 'July 1, 2022',
                      suffixIcon:
                      DateTimePicker(
                        type: DateTimePickerType.dateTimeSeparate,
                        dateMask: 'd MMM, yyyy',
                        initialValue: DateTime.now().toString(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2100),
                        icon: Container(
                          child: Image.asset("images/date_icon.PNG",
                            height: 21.5,
                            width: 19.5,
                          ),
                        ),
                        dateLabelText: 'Date',
                        selectableDayPredicate: (date) {
                          // Disable weekend days to select from the calendar
                          if (date.weekday == 6 || date.weekday == 7) {
                            return false;
                          }

                          return true;
                        },
                        onChanged: (val) => print(val),
                        validator: (val) {
                          print(val);
                          return null;
                        },
                        onSaved: (val) => print(val),
                        // child: Container(
                        //   child: Image.asset("images/date_icon.PNG",
                        //   height: 21.5,
                        //     width: 19.5,
                        //   ),
                        // ),
                      ),
                    ),
                    SizedBox(
                      height: 19,
                    ),
                    FormText(
                      text: 'EMS',),
                    SizedBox(
                      height: 8,
                    ),
                    FormTextField(
                      hintText: '',

                    ),
                    SizedBox(
                      height: 19,
                    ),
                    FormText(
                      text: 'Intern Name',),
                    SizedBox(
                      height: 8,
                    ),
                    FormTextField(
                      hintText: '',
                    ),
                    SizedBox(
                      height: 19,
                    ),
                    FormText(
                      text: 'Intern Name',),
                    SizedBox(
                      height: 8,
                    ),
                    FormTextField(
                      hintText: '',
                    ),
                    SizedBox(
                      height: 19,
                    ),
                    FormText(
                      text: 'Call Type / Chief Complaint:',
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    // Drop Down List 1
                    // FormTextField(
                    //   hintText: '',
                    //   suffixIcon: Padding(
                    //     padding: const EdgeInsets.only(left: 16,right: 16),
                    //     child: DropdownButton(
                    //       icon: Container(
                    //         child: Image.asset("images/drpo_down_icon.PNG",
                    //           height: 21.5,
                    //           width: 19.5,
                    //         ),
                    //       ),
                    //
                    //       value: valueChoose,
                    //       onChanged: (newValue){
                    //         setState(() {
                    //           valueChoose = newValue as String?;
                    //         });
                    //       },
                    //       items: listItem.map((valueItem){
                    //         return DropdownMenuItem(
                    //           value:  valueItem,
                    //           child: Row(
                    //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //             children: [
                    //               Text(valueItem),
                    //           Checkbox(
                    //             checkColor: Colors.white,
                    //             fillColor: MaterialStateProperty.resolveWith(getColor),
                    //             value: isChecked,
                    //             activeColor: Colors.red,
                    //             onChanged: (bool? value) {
                    //               setState(() {
                    //                 isChecked = value!;
                    //               });
                    //             },
                    //           ),
                    //             ],
                    //           ),
                    //         );
                    //
                    //       },
                    //     ).toList(),
                    // ),
                    //   ),
                    // ),
                    Card(
                      semanticContainer: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: Color(0xffF6F8FE),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24)
                      ),
                      child: ExpansionTile(
                        title: const Text(''),
                        trailing: Image.asset("images/drpo_down_icon.PNG",
                          height: 21.5,
                          width: 19.5,
                        ),

                        children:  <Widget>[
                          ListTile(title: Padding(
                            padding: const EdgeInsets.only(left: 30,right: 30),
                            child: Container(
                              height: 341,
                              width: 207,
                              decoration: BoxDecoration(
                                  color: Color(0xffF6F8FE),
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Color(0xff22356B))
                              ),
                              child:
                              SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 45,right: 45),
                                      child: Row(

                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Abdominal",style: GoogleFonts.inter(
                                            letterSpacing: 0.005,
                                            color: Color(0xff000000),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400
                                          ),),
                                          Checkbox(
                                            checkColor: Colors.white,
                                            fillColor: MaterialStateProperty.resolveWith(getColor),
                                            value: isChecked,
                                           // activeColor: Colors.red,
                                            onChanged: (bool? value) {
                                              setState(() {
                                                isChecked = value!;
                                              });
                                            },
                                          ),

                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 45,right: 45),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Altered LOC",style: GoogleFonts.inter(
                                              letterSpacing: 0.005,
                                              color: Color(0xff000000),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400
                                          ),),
                                          Checkbox(
                                            checkColor: Colors.white,
                                            fillColor: MaterialStateProperty.resolveWith(getColor),
                                            value: isChecked,
                                            // activeColor: Colors.red,
                                            onChanged: (bool? value) {
                                              setState(() {
                                                isChecked = value!;
                                              });
                                            },
                                          ),

                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 45,right: 45),
                                      child: Center(
                                        child: Row(

                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("Behavioral ",style: GoogleFonts.inter(
                                                letterSpacing: 0.005,
                                                color: Color(0xff000000),
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400
                                            ),),
                                            Checkbox(
                                              checkColor: Colors.white,
                                              fillColor: MaterialStateProperty.resolveWith(getColor),
                                              value: isChecked,
                                              // activeColor: Colors.red,
                                              onChanged: (bool? value) {
                                                setState(() {
                                                  isChecked = value!;
                                                });
                                              },
                                            ),

                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 45,right: 45),
                                      child: Center(
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("Chest Pain",style: GoogleFonts.inter(
                                                letterSpacing: 0.005,
                                                color: Color(0xff000000),
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400
                                            ),),
                                            Checkbox(
                                              checkColor: Colors.white,
                                              fillColor: MaterialStateProperty.resolveWith(getColor),
                                              value: isChecked,
                                              // activeColor: Colors.red,
                                              onChanged: (bool? value) {
                                                setState(() {
                                                  isChecked = value!;
                                                });
                                              },
                                            ),

                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 45,right: 45),
                                      child: Center(
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("Trauma",style: GoogleFonts.inter(
                                                letterSpacing: 0.005,
                                                color: Color(0xff000000),
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400
                                            ),),
                                            Checkbox(
                                              checkColor: Colors.white,
                                              fillColor: MaterialStateProperty.resolveWith(getColor),
                                              value: isChecked,
                                              // activeColor: Colors.red,
                                              onChanged: (bool? value) {
                                                setState(() {
                                                  isChecked = value!;
                                                });
                                              },
                                            ),

                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 45,right: 45),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Respiratory",style: GoogleFonts.inter(
                                              letterSpacing: 0.005,
                                              color: Color(0xff000000),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400
                                          ),),
                                          Checkbox(
                                            checkColor: Colors.white,
                                            fillColor: MaterialStateProperty.resolveWith(getColor),
                                            value: isChecked,
                                            // activeColor: Colors.red,
                                            onChanged: (bool? value) {
                                              setState(() {
                                                isChecked = value!;
                                              });
                                            },
                                          ),

                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 45,right: 45),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Stroke ",style: GoogleFonts.inter(
                                              letterSpacing: 0.005,
                                              color: Color(0xff000000),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400
                                          ),),
                                          Checkbox(
                                            checkColor: Colors.white,
                                            fillColor: MaterialStateProperty.resolveWith(getColor),
                                            value: isChecked,
                                            // activeColor: Colors.red,
                                            onChanged: (bool? value) {
                                              setState(() {
                                                isChecked = value!;
                                              });
                                            },
                                          ),

                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 45,right: 45),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Other",style: GoogleFonts.inter(
                                              letterSpacing: 0.005,
                                              color: Color(0xff000000),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400
                                          ),),
                                          Checkbox(
                                            checkColor: Colors.white,
                                            fillColor: MaterialStateProperty.resolveWith(getColor),
                                            value: isChecked,
                                            // activeColor: Colors.red,
                                            onChanged: (bool? value) {
                                              setState(() {
                                                isChecked = value!;
                                              });
                                            },
                                          ),

                                        ],
                                      ),
                                    ),


                                  ],
                                ),
                              ),
                            ),
                          )),
                        ],
                        onExpansionChanged: (bool expanded) {
                          setState(() => _customTileExpanded = expanded);
                        },
                      ),
                    ),

                    SizedBox(
                      height: 19,
                    ),
                    FormText(
                      text: 'Initial Impression / Scene Survey'),
                    SizedBox(
                      height: 8,
                    ),

                    // Drop Down List 2
                    // FormTextField(
                    //   hintText: '',
                    //   suffixIcon:
                    //   Padding(
                    //     padding: const EdgeInsets.only(left: 16,right: 16),
                    //     child: DropdownButton(
                    //       icon: Container(
                    //         child: Row(
                    //           children: [
                    //             Container(
                    //               child: Image.asset("images/drpo_down_icon.PNG",
                    //                 height: 21.5,
                    //                 width: 19.5,
                    //               ),
                    //             ),
                    //           ],
                    //         ),
                    //       ),
                    //
                    //       value: valueChoose,
                    //       onChanged: (newValue){
                    //         setState(() {
                    //           valueChoose = newValue as String?;
                    //         });
                    //       },
                    //       items: listItem.map((valueItem){
                    //         return DropdownMenuItem(
                    //           value:  valueItem,
                    //           child: Row(
                    //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //             children: [
                    //               Text(valueItem),
                    //               Checkbox(
                    //                 checkColor: Colors.white,
                    //                 fillColor: MaterialStateProperty.resolveWith(getColor),
                    //                 value: isChecked,
                    //                 activeColor: Colors.red,
                    //                 onChanged: (bool? value) {
                    //                   setState(() {
                    //                     isChecked = value!;
                    //                   });
                    //                 },
                    //               ),
                    //
                    //             ],
                    //           ),
                    //         );
                    //
                    //       },
                    //       ).toList(),
                    //     ),
                    //   ),
                    // ),

                    Card(
                      semanticContainer: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: Color(0xffF6F8FE),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24)
                      ),
                      child: ExpansionTile(
                        title: const Text('',style: TextStyle(fontSize: 4),),

                        trailing: Image.asset("images/drpo_down_icon.PNG",
                          height: 21.5,
                          width: 19.5,
                        ),

                        children:  <Widget>[
                          ListTile(title: Container(
                            height: 341,
                            width: 308,
                            decoration: BoxDecoration(
                                color: Color(0xffF6F8FE),
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Color(0xff22356B))
                            ),
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top:28,left: 13,right: 13),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Flexible(
                                          child: Text("Scene Size-up",
                                            style: GoogleFonts.montserrat(
                                                letterSpacing: 0.005,
                                                color: Color(0xff000000),
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600
                                            ),),
                                        ),
                                        Container(
                                          height: 20,
                                          width: 20,
                                          color: Color(0xffD9D9D9),
                                          child: Center(
                                            child: Text("0",
                                              style: GoogleFonts.montserrat(
                                                  letterSpacing: 0.005,
                                                  color: Color(0xff000000),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 9,
                                        ),
                                        Container(
                                          height: 20,
                                          width: 20,
                                          color: Color(0xffD9D9D9),
                                          child: Center(
                                            child: Text("1",
                                              style: GoogleFonts.montserrat(
                                                  letterSpacing: 0.005,
                                                  color: Color(0xff000000),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 9,
                                        ),
                                        Container(
                                          height: 20,
                                          width: 20,
                                          color: Color(0xffD9D9D9),
                                          child: Center(
                                            child: Text("2",
                                              style: GoogleFonts.montserrat(
                                                  letterSpacing: 0.005,
                                                  color: Color(0xff000000),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 9,
                                        ),
                                        Container(
                                          height: 20,
                                          width: 20,
                                          color: Color(0xff22356B),
                                          child: Center(
                                            child: Text("3",
                                              style: GoogleFonts.montserrat(
                                                  letterSpacing: 0.005,
                                                  color: Color(0xff000000),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 9,
                                        ),
                                        Container(
                                          height: 20,
                                          width: 20,
                                          color: Color(0xffD9D9D9),
                                          child: Center(
                                            child: Text("4",
                                              style: GoogleFonts.montserrat(
                                                  letterSpacing: 0.005,
                                                  color: Color(0xff000000),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 9,
                                        ),
                                        Container(
                                          height: 20,
                                          width: 20,
                                          color: Color(0xffD9D9D9),
                                          child: Center(
                                            child: Text("5",
                                              style: GoogleFonts.montserrat(
                                                  letterSpacing: 0.005,
                                                  color: Color(0xff000000),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600
                                              ),
                                            ),
                                          ),
                                        ),



                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top:28,left: 13,right: 13),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Flexible(
                                          child: Text("General Impression",
                                            style: GoogleFonts.montserrat(
                                                letterSpacing: 0.005,
                                                color: Color(0xff000000),
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600
                                            ),),
                                        ),
                                        Container(
                                          height: 20,
                                          width: 20,
                                          color: Color(0xffD9D9D9),
                                          child: Center(
                                            child: Text("0",
                                              style: GoogleFonts.montserrat(
                                                  letterSpacing: 0.005,
                                                  color: Color(0xff000000),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 9,
                                        ),
                                        Container(
                                          height: 20,
                                          width: 20,
                                          color: Color(0xffD9D9D9),
                                          child: Center(
                                            child: Text("1",
                                              style: GoogleFonts.montserrat(
                                                  letterSpacing: 0.005,
                                                  color: Color(0xff000000),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 9,
                                        ),
                                        Container(
                                          height: 20,
                                          width: 20,
                                          color: Color(0xffD9D9D9),
                                          child: Center(
                                            child: Text("2",
                                              style: GoogleFonts.montserrat(
                                                  letterSpacing: 0.005,
                                                  color: Color(0xff000000),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 9,
                                        ),
                                        Container(
                                          height: 20,
                                          width: 20,
                                          color: Color(0xffD9D9D9),
                                          child: Center(
                                            child: Text("3",
                                              style: GoogleFonts.montserrat(
                                                  letterSpacing: 0.005,
                                                  color: Color(0xff000000),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 9,
                                        ),
                                        Container(
                                          height: 20,
                                          width: 20,
                                          color: Color(0xffD9D9D9),
                                          child: Center(
                                            child: Text("4",
                                              style: GoogleFonts.montserrat(
                                                  letterSpacing: 0.005,
                                                  color: Color(0xff000000),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 9,
                                        ),
                                        Container(
                                          height: 20,
                                          width: 20,
                                          color: Color(0xff22356B),
                                          child: Center(
                                            child: Text("5",
                                              style: GoogleFonts.montserrat(
                                                  letterSpacing: 0.005,
                                                  color: Color(0xff000000),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600
                                              ),
                                            ),
                                          ),
                                        ),



                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 18,top: 18),
                                    child: Text("Comments",style: GoogleFonts.montserrat(
                                        letterSpacing: 0.005,
                                        color: Color(0xff000000),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600
                                    ),),
                                  ),
                                  Center(
                                    child: Container(
                                      height: 170,
                                      width: 249,
                                      decoration: BoxDecoration(
                                          color: Color(0xffF6F8FE),
                                          borderRadius: BorderRadius.circular(15),
                                          border: Border.all(color: Color(0xff22356B))
                                      ),
                                      child: TextField(
                                        maxLines: 10,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                  ),




                                ],
                              ),
                            ),
                          )),
                        ],
                        onExpansionChanged: (bool expanded) {
                          setState(() => _customTileExpanded = expanded);
                        },
                      ),
                    ),

                    SizedBox(
                      height: 19,
                    ),
                    FormText(
                      text: 'Primary Survey'),
                    SizedBox(
                      height: 8,
                    ),

                    // Drop Down List 3
                    Card(
                      semanticContainer: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: Color(0xffF6F8FE),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24)
                      ),
                      child: ExpansionTile(
                        title: const Text('',style: TextStyle(fontSize: 4),),

                        trailing: Image.asset("images/drpo_down_icon.PNG",
                          height: 21.5,
                          width: 19.5,
                        ),

                        children:  <Widget>[
                          ListTile(title: Container(
                            height: 275,
                            width: 308,
                            decoration: BoxDecoration(
                                color: Color(0xffF6F8FE),
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Color(0xff22356B))
                            ),
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top:28,left: 13,right: 30),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Life Threats",
                                          style: GoogleFonts.montserrat(
                                              letterSpacing: 0.005,
                                              color: Color(0xff000000),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600
                                          ),),
                                        SizedBox(
                                          width: 22,
                                        ),
                                        Container(
                                          height: 41,
                                          width: 66,
                                          decoration: BoxDecoration(
                                              color: Color(0xff22356B),
                                              borderRadius: BorderRadius.circular(5),
                                              border: Border.all(color: Color(0xff000000))
                                          ),
                                          child: Center(
                                            child: Text("Pass",
                                              style: GoogleFonts.montserrat(
                                                  letterSpacing: 0.005,
                                                  color: Color(0xffFFFFFF),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 41,
                                          width: 66,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(5),
                                              border: Border.all(color: Color(0xff000000))
                                          ),
                                          child: Center(
                                            child: Text("Fail",
                                              style: GoogleFonts.montserrat(
                                                  letterSpacing: 0.005,
                                                  color: Color(0xff000000),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600
                                              ),
                                            ),
                                          ),
                                        ),




                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top:28,left: 13,right: 30),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Stay or Go",
                                          style: GoogleFonts.montserrat(
                                              letterSpacing: 0.005,
                                              color: Color(0xff000000),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600
                                          ),),
                                        SizedBox(
                                          width: 30,
                                        ),
                                        Container(
                                          height: 41,
                                          width: 66,
                                          decoration: BoxDecoration(

                                              borderRadius: BorderRadius.circular(5),
                                              border: Border.all(color: Color(0xff000000))
                                          ),
                                          child: Center(
                                            child: Text("Pass",
                                              style: GoogleFonts.montserrat(
                                                  letterSpacing: 0.005,
                                                  color: Color(0xff000000),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 41,
                                          width: 66,
                                          decoration: BoxDecoration(
                                            color: Color(0xffE90505),
                                              borderRadius: BorderRadius.circular(5),
                                              border: Border.all(color: Color(0xff000000))
                                          ),
                                          child: Center(
                                            child: Text("Fail",
                                              style: GoogleFonts.montserrat(
                                                  letterSpacing: 0.005,

                                                  color: Color(0xffFFFFFF),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600
                                              ),
                                            ),
                                          ),
                                        ),




                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top:28,left: 13,right: 13),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Flexible(
                                          child: Text("Physical Exam",
                                            style: GoogleFonts.montserrat(
                                                letterSpacing: 0.005,
                                                color: Color(0xff000000),
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600
                                            ),),
                                        ),
                                        Container(
                                          height: 20,
                                          width: 20,
                                          color: Color(0xffD9D9D9),
                                          child: Center(
                                            child: Text("0",
                                              style: GoogleFonts.montserrat(
                                                  letterSpacing: 0.005,
                                                  color: Color(0xff000000),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 9,
                                        ),
                                        Container(
                                          height: 20,
                                          width: 20,
                                          color: Color(0xffD9D9D9),
                                          child: Center(
                                            child: Text("1",
                                              style: GoogleFonts.montserrat(
                                                  letterSpacing: 0.005,
                                                  color: Color(0xff000000),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 9,
                                        ),
                                        Container(
                                          height: 20,
                                          width: 20,
                                          color: Color(0xffD9D9D9),
                                          child: Center(
                                            child: Text("2",
                                              style: GoogleFonts.montserrat(
                                                  letterSpacing: 0.005,
                                                  color: Color(0xff000000),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 9,
                                        ),
                                        Container(
                                          height: 20,
                                          width: 20,
                                          color: Color(0xff22356B),
                                          child: Center(
                                            child: Text("3",
                                              style: GoogleFonts.montserrat(
                                                  letterSpacing: 0.005,
                                                  color: Color(0xff000000),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 9,
                                        ),
                                        Container(
                                          height: 20,
                                          width: 20,
                                          color: Color(0xffD9D9D9),
                                          child: Center(
                                            child: Text("4",
                                              style: GoogleFonts.montserrat(
                                                  letterSpacing: 0.005,
                                                  color: Color(0xff000000),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 9,
                                        ),
                                        Container(
                                          height: 20,
                                          width: 20,
                                          color: Color(0xffD9D9D9),
                                          child: Center(
                                            child: Text("5",
                                              style: GoogleFonts.montserrat(
                                                  letterSpacing: 0.005,
                                                  color: Color(0xff000000),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600
                                              ),
                                            ),
                                          ),
                                        ),



                                      ],
                                    ),
                                  ),






                                ],
                              ),
                            ),
                          )),
                        ],
                        onExpansionChanged: (bool expanded) {
                          setState(() => _customTileExpanded = expanded);
                        },
                      ),
                    ),
                    SizedBox(
                      height: 19,
                    ),
                    FormText(
                      text: 'Secondary Survey'),
                    SizedBox(
                      height: 8,
                    ),
                    FormTextField(
                      hintText: '',
                      suffixIcon: Container(
                        child: Image.asset("images/drpo_down_icon.PNG",
                          height: 2.5,
                          width: 19.5,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 19,
                    ),
                    FormText(
                      text: 'Comments',),
                    SizedBox(
                      height: 8,
                    ),
                    FormTextField(
                      hintText: 'Type in your comments',
                    ),
                    SizedBox(
                      height: 19,
                    ),

                    FormText(
                      text: 'Treatment / Call Management',),
                    SizedBox(
                      height: 8,
                    ),
                    FormTextField(
                      hintText: '',
                      suffixIcon: Container(
                        child: Image.asset("images/drpo_down_icon.PNG",
                          height: 2.5,
                          width: 19.5,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 19,
                    ),
                    FormText(
                      text: 'Comments',),
                    SizedBox(
                      height: 8,
                    ),
                    FormTextField(
                      hintText: 'Type in your comments',
                    ),
                    SizedBox(
                      height: 19,
                    ),

                    FormText(
                      text: 'Overall Rating'),
                    SizedBox(
                      height: 8,
                    ),
                    FormTextField(
                      hintText: '',
                      suffixIcon: Container(
                        child: Image.asset("images/drpo_down_icon.PNG",
                          height: 2.5,
                          width: 19.5,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 19,
                    ),
                    FormText(
                      text: 'Comments',),
                    SizedBox(
                      height: 8,
                    ),
                    FormTextField(
                      hintText: 'Type in your comments',
                    ),
                    SizedBox(
                      height: 19,
                    ),
                    FormText(
                      text: 'Intern Comments'),
                    SizedBox(
                      height: 8,
                    ),
                    FormTextField(
                      hintText: 'comments',
                    ),
                    SizedBox(
                      height: 42,
                    ),

                  ],
                ),
              )

              //Login Button
            ],
          ),
        ),
      ),
    );
  }
}
