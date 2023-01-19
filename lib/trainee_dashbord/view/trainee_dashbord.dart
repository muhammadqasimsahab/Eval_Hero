import 'package:evalhero/homescreen/widget/drawer.dart';
import 'package:evalhero/profile/view/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import '../../homescreen/model.dart';



class TraineeDashbord extends StatefulWidget {
  const TraineeDashbord({Key? key}) : super(key: key);
  @override
  _TraineeDashbordState createState() => _TraineeDashbordState();
}
class _TraineeDashbordState extends State<TraineeDashbord> {
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
                      shrinkWrap: true,
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
                                  height: 175,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 15,),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                            Center(
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  // SizedBox(
                                                  //   height: 24,
                                                  // ),
                                                  Text(
                                                    itemData[index].name,
                                                    style: GoogleFonts.montserrat(
                                                      fontWeight: FontWeight.w700,
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                  Text(
                                                    itemData[index].traine,style: TextStyle(fontSize: 12),
                                                  ),
                                                  SizedBox(
                                                    height: 6,
                                                  ),
                                                  Text(
                                                    itemData[index].evalution,style: TextStyle(fontSize: 12),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              height: 31,
                                              width: 60,
                                              decoration: BoxDecoration(
                                                  color: Color(0xff22356B),
                                                  borderRadius: BorderRadius.circular(20)
                                              ),
                                              child: Center(
                                                child: Text(
                                                  itemData[index].view,style: GoogleFonts.montserrat(
                                                    fontSize: 14,
                                                    color: Color(0xffF6F8FE),
                                                    fontWeight: FontWeight.w700
                                                ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            Container(
                                              height: 30,
                                              width: 80,
                                              decoration: BoxDecoration(
                                                  color: Color(0xff22356B),
                                                  borderRadius: BorderRadius.circular(20)
                                              ),
                                              child: Center(
                                                child: Text(
                                                  itemData[index].select,style: GoogleFonts.montserrat(
                                                    fontSize: 14,
                                                    color: Color(0xffF6F8FE),
                                                    fontWeight: FontWeight.w700
                                                ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              height: 30,
                                              width: 80,
                                              decoration: BoxDecoration(
                                                  color: Color(0xffE90505),
                                                  borderRadius: BorderRadius.circular(20)
                                              ),
                                              child: Center(
                                                child: Text(
                                                  itemData[index].reject,style: GoogleFonts.montserrat(
                                                    fontSize: 14,
                                                    color: Color(0xffF6F8FE),
                                                    fontWeight: FontWeight.w700
                                                ),
                                                ),
                                              ),
                                            ),
                                            CircularPercentIndicator(
                                              radius: 23.0,
                                              lineWidth: 5.0,
                                              percent: 0.75,
                                              center: new Text("75%"),
                                              progressColor: Colors.red,
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                        }),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),

              ],
            ),
          ),
        ),
      );
  }
}
