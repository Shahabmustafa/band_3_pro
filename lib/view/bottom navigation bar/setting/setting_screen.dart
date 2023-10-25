import 'package:band_two_pro/utils/routes/route_name.dart';
import 'package:band_two_pro/view/bottom%20navigation%20bar/setting/setting_notification_screen.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        elevation: 0,
      ),
      body: Container(
        height: size.height * 1,
        width: size.width * 1,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.yellow,
              Colors.yellow,
              Colors.white,
              Colors.white,
            ],
          ),
        ),
        child: Column(
          children: [
            ListTile(
              leading: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(50)
                ),
                child: Icon(Icons.person,color: Colors.white,),
              ),
              title: Text("Personal Information",style: TextStyle(fontWeight: FontWeight.bold),),
              trailing: Icon(Icons.arrow_forward_ios,size: 18,),
              onTap: (){

              },
            ),
            ListTile(
              leading: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(50)
                ),
                child: Icon(Icons.access_time_filled,color: Colors.white,),
              ),
              title: Text("Dicovery Settings",style: TextStyle(fontWeight: FontWeight.bold),),
              trailing: Icon(Icons.arrow_forward_ios,size: 18,),
              onTap: (){

              },
            ),
            ListTile(
              leading: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(50)
                ),
                child: Icon(Icons.lock,color: Colors.white,),
              ),
              title: Text("Privacy & Permission",style: TextStyle(fontWeight: FontWeight.bold),),
              trailing: Icon(Icons.arrow_forward_ios,size: 18,),
              onTap: (){

              },
            ),
            ListTile(
              leading: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(50)
                ),
                child: Icon(Icons.notifications,color: Colors.white,),
              ),
              title: Text("Notification",style: TextStyle(fontWeight: FontWeight.bold),),
              trailing: Icon(Icons.arrow_forward_ios,size: 18,),
              onTap: (){
                PersistentNavBarNavigator.pushNewScreen(
                  context,
                  screen: SettingNotificationPage(),
                  withNavBar: false, // OPTIONAL VALUE. True by default.
                  pageTransitionAnimation: PageTransitionAnimation.cupertino,
                );
              },
            ),
            ListTile(
              leading: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(50)
                ),
                child: Icon(Icons.security,color: Colors.white,),
              ),
              title: Text("Security",style: TextStyle(fontWeight: FontWeight.bold),),
              trailing: Icon(Icons.arrow_forward_ios,size: 18,),
              onTap: (){

              },
            ),
            ListTile(
              leading: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(50)
                ),
                child: Icon(Icons.language,color: Colors.white,),
              ),
              title: Text("Languages",style: TextStyle(fontWeight: FontWeight.bold),),
              trailing: Icon(Icons.arrow_forward_ios,size: 18,),
              onTap: (){

              },
            ),
            ListTile(
              leading: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(50)
                ),
                child: Icon(Icons.feed,color: Colors.white,),
              ),
              title: Text("Feedback",style: TextStyle(fontWeight: FontWeight.bold),),
              trailing: Icon(Icons.arrow_forward_ios,size: 18,),
              onTap: (){

              },
            ),
            ListTile(
              leading: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(50)
                ),
                child: Icon(Icons.question_mark,color: Colors.white,),
              ),
              title: Text("About",style: TextStyle(fontWeight: FontWeight.bold),),
              trailing: Icon(Icons.arrow_forward_ios,size: 18,),
              onTap: (){

              },
            ),
            ListTile(
              leading: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(50)
                ),
                child: Icon(Icons.delete,color: Colors.white,),
              ),
              title: Text("Delete",style: TextStyle(fontWeight: FontWeight.bold),),
              trailing: Icon(Icons.arrow_forward_ios,size: 18,),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => SettingNotificationPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
