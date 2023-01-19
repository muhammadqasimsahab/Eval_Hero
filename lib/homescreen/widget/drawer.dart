import 'package:evalhero/profile/view/profile_screen.dart';
import 'package:evalhero/setting/view/setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../dashbord/view/dashbord_screen.dart';
import '../../form1/view/form1_screen.dart';
import '../../fto/view/fto_screen.dart';
import '../../trainee_dashbord/view/trainee_dashbord.dart';
import '../../trainers/view/trainers_screen.dart';
import 'drawer_reuse_container.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 18,top: 40,bottom: 20),
                child: Icon(Icons.menu,
                  size: 30,
                ),
              ),
            ),
            SizedBox(
              height: 28,
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>DashbordScreen()));
              },
              child: DrawerReuseContainer(text: 'Dashboard',),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> TrainserScreen()));
              },
              child: DrawerReuseContainer(text: 'Trainers',),
            ),
            InkWell(
              onTap: (){
              },
              child: DrawerReuseContainer(text: 'FTO Details',),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>FtoScreen()));
              },
              child: DrawerReuseContainer(text: 'FTO Program SOP',),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>TraineeDashbord()));
              },
              child: DrawerReuseContainer(text: 'Guidlines',),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileScreen()));
              },
              child: DrawerReuseContainer(text: 'Profile',),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingScreen()));
              },
              child: DrawerReuseContainer(text: 'Settings',),
            ),
          ],
        ),
      );
  }
}
