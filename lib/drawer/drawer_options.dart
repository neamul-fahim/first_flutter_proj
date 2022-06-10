import 'package:first_flutter_p/my_home_page.dart';
import 'package:flutter/material.dart';

class DrawerOptions extends StatefulWidget {
  IconData drawerOptionIcon;
  String drawerOptionName;
  Widget classname;
   DrawerOptions({Key? key,
    required this.drawerOptionIcon,
     required this.drawerOptionName,
     required this.classname,
  }) : super(key: key);

  @override
  State<DrawerOptions> createState() => _DrawerOptionsState();
}

class _DrawerOptionsState extends State<DrawerOptions> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child:Padding(
          padding: const EdgeInsets.all(15.0),
          child: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>widget.classname));
            },
            child: Row(
              children: [
                Icon(widget.drawerOptionIcon,color: Colors.black,),
                SizedBox(
                  width: 10,
                ),
                Text(widget.drawerOptionName,style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400

                ),),
              ],
            ),
          ),
        )
    );
  }
}
