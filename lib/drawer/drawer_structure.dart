import 'package:first_flutter_p/drawer/drawer_options.dart';
import 'package:first_flutter_p/my_home_page.dart';
import 'package:first_flutter_p/signup/signup.dart';
import 'package:flutter/material.dart';

class CustomAppDrawer extends StatefulWidget {
  const CustomAppDrawer({Key? key}) : super(key: key);

  @override
  State<CustomAppDrawer> createState() => _CustomAppDrawerState();
}






class _CustomAppDrawerState extends State<CustomAppDrawer> {
  @override
  Widget build(BuildContext context) {
    double dynamicHeight=MediaQuery.of(context).size.height;
    double dynamicWidth=MediaQuery.of(context).size.width;
    return Container(
      height: dynamicHeight,
      width: dynamicWidth*0.4,
      decoration: BoxDecoration(
        color: Colors.cyan.shade100,
        borderRadius: BorderRadius.circular(20),
      ),

      child: Column(
        children:[
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            height: dynamicWidth*0.18,
            width: dynamicWidth*0.18,
            decoration: BoxDecoration(
              color: Colors.black,
                  borderRadius: BorderRadius.circular(180)
            ),

          ),
        ),

          drawerProperty(Icons.home_outlined, 'Home',context,()=>MyHomePage()),

           drawerProperty(Icons.add_circle, 'Add Post',context,()=>SignUpPage()),

           drawerProperty(Icons.notifications_active, 'Notification',context,()=>SignUpPage()),

         DrawerOptions(drawerOptionIcon: Icons.thumb_up_alt_rounded,
             drawerOptionName: 'Likes', classname:MyHomePage(),
          ),

          // DrawerOptions(drawerOptionIcon: Icons.settings,
          //    drawerOptionName: 'Settings'),
          //
          // DrawerOptions(drawerOptionIcon: Icons.logout_rounded,
          //    drawerOptionName: 'LogOut'),



        ],
      ),
    );
  }
}
 Container drawerProperty(IconData drawerOptionIcon,String drawerOptionName,BuildContext context,Widget Function() className){
  return Container(
    child:Padding(
      padding: const EdgeInsets.all(15.0),
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
            return className();
          }));

        },
        child: Row(
          children: [
            Icon(drawerOptionIcon,color: Colors.black,),
            SizedBox(
              width: 10,
            ),
            Text(drawerOptionName,style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400

            ),),
          ],
        ),
      ),
    )
  );
}

   // void pageRout(BuildContext context,className){
   // Navigator.push(context, MaterialPageRoute(builder: (context)=>className));
   //
   // }