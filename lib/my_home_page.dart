import 'package:first_flutter_p/button-screen1.dart';
import 'package:first_flutter_p/button_screen.dart';
import 'package:first_flutter_p/facebookbookprofile/profile_first_module.dart';
import 'package:first_flutter_p/gridview.dart';
import 'package:first_flutter_p/image-full.dart';
import 'package:first_flutter_p/login/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


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
  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.teal,
        elevation:20,
        centerTitle: true,
        title: Text("Bangladesh"),
      ),
      body:Column(
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
                  
                  padding: const EdgeInsets.only(left:8.0),
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
      ) ,
    );
  }
}

