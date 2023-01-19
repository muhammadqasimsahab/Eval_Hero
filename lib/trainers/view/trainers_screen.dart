import 'package:evalhero/homescreen/widget/drawer.dart';
import 'package:evalhero/profile/view/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../homescreen/model.dart';


class TrainserScreen extends StatefulWidget {

  const TrainserScreen({Key? key}) : super(key: key);

  @override
  _TrainserScreenState createState() => _TrainserScreenState();
}

class _TrainserScreenState extends State<TrainserScreen> {
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
          title: Text("Trainers",style: GoogleFonts.plusJakartaSans(
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
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 49,
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child:
                    ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return
                            Card(
                              elevation: 3,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: ListTile(
                                title: Container(
                                  height: 210,
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
                                                    image: AssetImage(itemData[index].imageurl),
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
                                                  itemData[index].name,
                                                  style: GoogleFonts.montserrat(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                                Text(
                                                  itemData[index].traine,style: GoogleFonts.montserrat(
                                                  fontWeight: FontWeight.w400,
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
                                                  "Age",style: GoogleFonts.montserrat(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14,
                                                    color: Color(0xff78828A)
                                                ),
                                                ),
                                                SizedBox(
                                                  width: 40,
                                                ),
                                                Text(
                                                  itemData[index].age,style: GoogleFonts.montserrat(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14,
                                                    color: Color(0xff78828A)
                                                ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 6,
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  "Field",style: GoogleFonts.montserrat(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14,
                                                    color: Color(0xff78828A)
                                                ),
                                                ),
                                                SizedBox(
                                                  width: 40,
                                                ),
                                                Text(
                                                  itemData[index].field,style: GoogleFonts.montserrat(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14,
                                                    color: Color(0xff78828A)
                                                ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 6,
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  "Contact",style: GoogleFonts.montserrat(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14,
                                                    color: Color(0xff78828A)
                                                ),
                                                ),
                                                SizedBox(
                                                  width: 40,
                                                ),
                                                Text(
                                                  itemData[index].contact,style: GoogleFonts.montserrat(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14,
                                                    color: Color(0xff78828A)
                                                ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 6,
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  "Email",style: GoogleFonts.montserrat(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14,
                                                    color: Color(0xff78828A)
                                                ),
                                                ),
                                                SizedBox(
                                                  width: 40,
                                                ),
                                                Text(
                                                  itemData[index].email,style: GoogleFonts.montserrat(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14,
                                                    color: Color(0xff78828A)
                                                ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 6,
                                            ),

                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),

                            );
                        }),
                  ),
                ),

              ],
            ),
          ),
        ),
      );
  }

}
