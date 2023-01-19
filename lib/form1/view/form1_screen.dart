import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../form3/widget/form_text_field.dart';
import '../../signup/widget/form_text.dart';


class Form1Screen extends StatefulWidget {
  const Form1Screen({Key? key}) : super(key: key);
  @override
  _Form1ScreenState createState() => _Form1ScreenState();
}
class _Form1ScreenState extends State<Form1Screen> {
  bool _customTileExpanded = false;
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
              Padding(
                padding: const EdgeInsets.only(left: 11,right: 11),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

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
                    Flexible(
                      child: Text("PATIENT ASSESSMENT - MEDICAL",
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
                      text: 'Date of Eval',),
                    SizedBox(
                      height: 8,
                    ),
                    FormTextField(
                      hintText: 'July 1, 2022',
                      suffixIcon: Container(
                        child: Image.asset("images/date_icon.PNG",
                          height: 21.5,
                          width: 19.5,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 19,
                    ),
                    FormText(
                      text: 'Candidate',),
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
                      text: 'Examiner',),
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
                      text: 'Scene size up',),
                    SizedBox(
                      height: 8,
                    ),
                    Card(
                      semanticContainer: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: Color(0xffF6F8FE),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24)
                      ),
                      child: ExpansionTile(
                        title:  Text('Select',style: GoogleFonts.montserrat(
                            fontSize: 12,
                            letterSpacing: 0.005,
                            color: Color(0xff78828A),
                            fontWeight: FontWeight.w500),),
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
                                    padding: const EdgeInsets.only(top:28,left: 13,right: 19),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Flexible(
                                          child: Text("Determines the scene/situation is safe",
                                            style: GoogleFonts.montserrat(
                                                color: Color(0xff000000),
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600
                                            ),),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          height: 30,
                                          width: 32,
                                          decoration: BoxDecoration(
                                              border: Border.all(color: Color(0xff000000))
                                          ),
                                        ),
                                        Container(
                                          height: 30,
                                          width: 32,
                                          decoration: BoxDecoration(
                                              border: Border.all(color: Color(0xff000000))
                                          ),
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
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top:28,left: 13,right: 19),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Flexible(
                                          child: Text("Determines the mechanism of injury/nature of illness",
                                            style: GoogleFonts.montserrat(
                                                color: Color(0xff000000),
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600
                                            ),),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          height: 30,
                                          width: 32,
                                          decoration: BoxDecoration(
                                              border: Border.all(color: Color(0xff000000))
                                          ),
                                        ),
                                        Container(
                                          height: 30,
                                          width: 32,
                                          decoration: BoxDecoration(
                                              border: Border.all(color: Color(0xff000000))
                                          ),
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
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top:28,left: 13,right: 19),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Flexible(
                                          child: Text("Determines the number of patients ",
                                            style: GoogleFonts.montserrat(
                                                color: Color(0xff000000),
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600
                                            ),),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          height: 30,
                                          width: 32,
                                          decoration: BoxDecoration(
                                              border: Border.all(color: Color(0xff000000))
                                          ),
                                        ),
                                        Container(
                                          height: 30,
                                          width: 32,
                                          decoration: BoxDecoration(
                                              border: Border.all(color: Color(0xff000000))
                                          ),
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
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top:28,left: 13,right: 19),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Flexible(
                                          child: Text("Requests additional help if necessary ",
                                            style: GoogleFonts.montserrat(
                                                color: Color(0xff000000),
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600
                                            ),),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          height: 30,
                                          width: 32,
                                          decoration: BoxDecoration(
                                              border: Border.all(color: Color(0xff000000))
                                          ),
                                        ),
                                        Container(
                                          height: 30,
                                          width: 32,
                                          decoration: BoxDecoration(
                                              border: Border.all(color: Color(0xff000000))
                                          ),
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
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top:28,left: 13,right: 19),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Flexible(
                                          child: Text("Considers stabilization of spine",
                                            style: GoogleFonts.montserrat(
                                                color: Color(0xff000000),
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600
                                            ),),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          height: 30,
                                          width: 32,
                                          decoration: BoxDecoration(
                                              border: Border.all(color: Color(0xff000000))
                                          ),
                                        ),
                                        Container(
                                          height: 30,
                                          width: 32,
                                          decoration: BoxDecoration(
                                              border: Border.all(color: Color(0xff000000))
                                          ),
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
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 19,
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
                        text: 'PRIMARY SURVEY'),
                    SizedBox(
                      height: 8,
                    ),
                    // Drop Down List 1
                    FormTextField(
                      hintText: 'Select',
                      suffixIcon: Container(
                        child: Image.asset("images/drpo_down_icon.PNG",
                          height: 21.5,
                          width: 19.5,

                        ),
                      ),
                    ),
                    SizedBox(
                      height: 19,
                    ),
                    FormText(
                        text: 'HISTORY TAKING AND SECONDARY ASSESSMENT'),
                    SizedBox(
                      height: 8,
                    ),
                    // Drop Down List 2
                    FormTextField(
                      hintText: 'Select',
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
                        text: 'REASSESSMENT'),
                    SizedBox(
                      height: 8,
                    ),
                    // Drop Down List 3
                    FormTextField(
                      hintText: 'Select',
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
                        text: 'Total'),
                    SizedBox(
                      height: 8,
                    ),
                    FormTextField(
                      hintText: '00 / 48',
                    ),
                    SizedBox(
                      height: 41,
                    ),
                    Text("CRITICAL CRITERIA ",
                    style: GoogleFonts.montserrat(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff22356B),
                    ),
                    ),
                      FormText(text: "_____ Failure to initiate or call for transport of the patient within 15 minute time limit"),
                      FormText(text: "_____ Failure to take or verbalize body substance isolation precautions"),
                      FormText(text: "_____ Failure to determine scene safety before approaching patient"),
                      FormText(text: "_____ Failure to voice and ultimately provide appropriate oxygen therapy"),
                      FormText(text: "_____ Failure to assess/provide adequate ventilation"),
                      FormText(text: "_____ Failure to find or appropriately manage problems associated with airway, breathing, hemorrhage or shock [hypoperfusion]"),
                      FormText(text: " _____ Failure to differentiate patients need for immediate transportation versus continued assessment and treatment at the scene"),
                      FormText(text:  " _____ Does other detailed history or physical examination before assessing and treating threats to airway, breathing, and circulation"),
                      FormText(text: "_____ Failure to determine the patients primary problem"),
                      FormText (text: "_____ Orders a dangerous or inappropriate intervention"),
                      FormText(text: "_____ Failure to provide for spinal protection when indicated"),
                      FormText(text: " You must factually document your rationale for checking any of the above critical items on the reverse side of this form."),
                      SizedBox(height: 19,),

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
