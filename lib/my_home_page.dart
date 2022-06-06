import 'package:first_flutter_p/button-screen1.dart';
import 'package:first_flutter_p/button_screen.dart';
import 'package:first_flutter_p/facebookbookprofile/profile_first_module.dart';
import 'package:first_flutter_p/gridview.dart';
import 'package:first_flutter_p/image-full.dart';
import 'package:first_flutter_p/login/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
   Color btnColor=Colors.blue;
   String btnText= "don't touch";
  List<String> fbfeturedpic=[
    'assets/image/FB_IMG_1591515366745.jpg',
    'assets/image/FB_IMG_1591515418655.jpg',
    'assets/image/FB_IMG_1591515457114.jpg',
    'assets/image/FB_IMG_1591515477353.jpg',
    'assets/image/FB_IMG_1591515503228.jpg',
    'assets/image/FB_IMG_1591515537972.jpg',
    'assets/image/FB_IMG_1591515546161.jpg',
    'assets/image/FB_IMG_1591515565940.jpg',
    'assets/image/FB_IMG_1591515612475.jpg',
  ];
   List<String> imagelist=[
     'assets/image/FB_IMG_1591515366745.jpg',
     'assets/image/FB_IMG_1591515418655.jpg',
     'assets/image/FB_IMG_1591515457114.jpg',
     'assets/image/FB_IMG_1591515477353.jpg',
     'assets/image/FB_IMG_1591515503228.jpg',
     'assets/image/FB_IMG_1591515537972.jpg',
     'assets/image/FB_IMG_1591515546161.jpg',
     'assets/image/FB_IMG_1591515565940.jpg',
     'assets/image/FB_IMG_1591515598600.jpg',
     'assets/image/FB_IMG_1591515612475.jpg',
     'assets/image/FB_IMG_1591515617975.jpg',
     'assets/image/FB_IMG_1591515736209.jpg',
     'assets/image/FB_IMG_1591515746231.jpg',
     'assets/image/FB_IMG_1591515847823.jpg',
     'assets/image/FB_IMG_1596542596346.jpg',
     'assets/image/FB_IMG_1598393561538.jpg',

   ];

   List<String> namelist=['pic1','pic2','pic3','pic4','pic5','pic6','pic7','pic8','pic9','pic10','pic11','pic12',
     'pic13','pic14','pic15','pic16'];



class _MyHomePageState extends State<MyHomePage> {
  GlobalKey<SliderDrawerState> _key = GlobalKey<SliderDrawerState>();
  String title='home page';

  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      // appBar:AppBar(
      //   backgroundColor: Colors.teal,
      //   elevation:20,
      //   centerTitle: true,
      //   title: Text("Bangladesh"),
      // ),
      body:SliderDrawer(
          appBar: SliderAppBar(
            appBarHeight: 55,
            appBarPadding: const EdgeInsets.only(top: 0),
              appBarColor: Colors.amber,
              title: Text(title,
                  style: const TextStyle(
                      fontSize: 22, fontWeight: FontWeight.w700))),
          key: _key,
          sliderOpenSize: 300,
          slider: _SliderView(
            onItemClick: (title) {
              _key.currentState!.closeSlider();
              setState(() {
                this.title = title;
              });
            },
          ),
          child:
        Container(
          color: Colors.blue.shade300,
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [

              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder:(context)=>Profilefirstmodule(
                          feturedpic: fbfeturedpic)));

                    },
                    child: Padding(

                      padding: const EdgeInsets.only(left:8.0,top: 8),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(50),
                        ) ,
                        //color: Colors.amber,
                       // decoration: BoxDecoration(
                         // borderRadius:BorderRadius(),

                       // ),
                          height: 60,
                          width: 100,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.deepOrangeAccent,
                                borderRadius: BorderRadius.circular(70)
                              ),
                              //color: Colors.orange,
                                height: 40,
                                width: 80,
                                child: Padding(
                                  padding: const EdgeInsets.only(left:8.0,right:8.0,top:8),
                                  child: Text(" facebook    profile  "),
                                )),
                          )),
                    )),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed:() {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                }
                ,
                    child: Text("login button")),
              ),

              ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>GridViewImage(
                        imagelink: imagelist,
                        namelink: namelist)));
                  },
                  child: Text("gridview")),



              Expanded(
                child: ListView.builder(
                  itemCount: imagelist.length,
                    itemBuilder: (context,index){

                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox
                        (
                        height: 300,
                          width: 200,

                          child: Column(
                            children: [
                              InkWell(
                                onTap:(){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>FullImage(
                                      imagelink: imagelist,
                                      namelink: namelist,
                                      index:index
                                  )));
                      },
                                child: SizedBox
                          (
                                    height:280,
                                    child: Image.asset(imagelist[index],fit: BoxFit.cover,)),
                              ),
                              Text(namelist[index]),
                            ],
                          )),
                    );
                    }


          ),
              ),




            ],
          ),
        ) ,

      )



      // Container(
      //   color: Colors.blue.shade300,
      //   child: Column(
      //
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //
      //     children: [
      //
      //       Padding(
      //         padding: const EdgeInsets.only(left: 8.0),
      //         child: InkWell(
      //             onTap: (){
      //               Navigator.push(context, MaterialPageRoute(builder:(context)=>Profilefirstmodule(
      //                   feturedpic: fbfeturedpic)));
      //
      //             },
      //             child: Padding(
      //
      //               padding: const EdgeInsets.only(left:8.0),
      //               child: Container(
      //                 decoration: BoxDecoration(
      //                   color: Colors.amber,
      //                   borderRadius: BorderRadius.circular(50),
      //                 ) ,
      //                 //color: Colors.amber,
      //                // decoration: BoxDecoration(
      //                  // borderRadius:BorderRadius(),
      //
      //                // ),
      //                   height: 60,
      //                   width: 100,
      //                   child: Padding(
      //                     padding: const EdgeInsets.all(8.0),
      //                     child: Container(
      //                       decoration: BoxDecoration(
      //                         color: Colors.deepOrangeAccent,
      //                         borderRadius: BorderRadius.circular(70)
      //                       ),
      //                       //color: Colors.orange,
      //                         height: 40,
      //                         width: 80,
      //                         child: Padding(
      //                           padding: const EdgeInsets.only(left:8.0,right:8.0,top:8),
      //                           child: Text(" facebook    profile  "),
      //                         )),
      //                   )),
      //             )),
      //       ),
      //
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: ElevatedButton(onPressed:() {
      //         Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
      //         }
      //         ,
      //             child: Text("login button")),
      //       ),
      //
      //       ElevatedButton(
      //           onPressed: (){
      //             Navigator.push(context, MaterialPageRoute(builder: (context)=>GridViewImage(
      //                 imagelink: imagelist,
      //                 namelink: namelist)));
      //           },
      //           child: Text("gridview")),
      //
      //
      //
      //       Expanded(
      //         child: ListView.builder(
      //           itemCount: imagelist.length,
      //             itemBuilder: (context,index){
      //
      //             return Padding(
      //               padding: const EdgeInsets.all(8.0),
      //               child: SizedBox
      //                 (
      //                 height: 300,
      //                   width: 200,
      //
      //                   child: Column(
      //                     children: [
      //                       InkWell(
      //                         onTap:(){
      //                           Navigator.push(context, MaterialPageRoute(builder: (context)=>FullImage(
      //                               imagelink: imagelist,
      //                               namelink: namelist,
      //                               index:index
      //                           )));
      //               },
      //                         child: SizedBox
      //                   (
      //                             height:280,
      //                             child: Image.asset(imagelist[index],fit: BoxFit.cover,)),
      //                       ),
      //                       Text(namelist[index]),
      //                     ],
      //                   )),
      //             );
      //             }
      //
      //
      //   ),
      //       ),
      //
      //
      //
      //
      //     ],
      //   ),
      // ) ,

    );
  }
}

class _SliderView extends StatelessWidget {
  final Function(String)? onItemClick;

  const _SliderView({Key? key, this.onItemClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          CircleAvatar(
            radius: 65,
            backgroundColor: Colors.grey,
            child: CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/images/user_profile.jpg'),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Fahim',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30,
                fontFamily: 'BalsamiqSans'),
          ),
          SizedBox(
            height: 20,
          ),
          _SliderMenuItem(
              title: 'Home', iconData: Icons.home, onTap: onItemClick),
          _SliderMenuItem(
              title: 'Add Post',
              iconData: Icons.add_circle,
              onTap: onItemClick),
          _SliderMenuItem(
              title: 'Notification',
              iconData: Icons.notifications_active,
              onTap: onItemClick),
          _SliderMenuItem(
              title: 'Likes', iconData: Icons.favorite, onTap: onItemClick),
          _SliderMenuItem(
              title: 'Setting', iconData: Icons.settings, onTap: onItemClick),
          _SliderMenuItem(
              title: 'LogOut',
              iconData: Icons.arrow_back_ios,
              onTap: onItemClick),
        ],
      ),
    );
  }
}


class _SliderMenuItem extends StatelessWidget {
  final String title;
  final IconData iconData;
  final Function(String)? onTap;

  const _SliderMenuItem(
      {Key? key,
        required this.title,
        required this.iconData,
        required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(title,
            style: TextStyle(
                color: Colors.black, fontFamily: 'BalsamiqSans_Regular')),
        leading: Icon(iconData, color: Colors.black),
        onTap: () => onTap?.call(title));
  }
}