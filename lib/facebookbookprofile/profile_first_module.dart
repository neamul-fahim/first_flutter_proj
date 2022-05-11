import 'package:flutter/material.dart';
class Profilefirstmodule extends StatefulWidget {

  List<String> feturedpic;
   Profilefirstmodule({Key? key,
    required this.feturedpic,

  }) : super(key: key);

  @override
  State<Profilefirstmodule> createState() => _ProfilefirstmoduleState();
}

class _ProfilefirstmoduleState extends State<Profilefirstmodule> {
  @override
  Widget build(BuildContext context) {

    double profiledp=MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        actions: [
            Icon(Icons.search_outlined)
        ],
        backgroundColor: Colors.black,


      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),

                child: Container(
                  decoration: BoxDecoration(
                  color: Colors.amber,
                    //borderRadius: BorderRadius.circular(8),
                  ),
                  height: 282,
                  width: profiledp,
                  child: Stack(
                    children: [
                      InkWell(
                        onTap: (){
                        },
                        child: Container(

                          child:Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right:10,bottom: 10),
                                child: InkWell(
                                  onTap: (){

                                  },
                                  child: Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(180),
                                        color: Colors.white54
                                      ),
                                      child: Icon(Icons.camera_alt)),
                                ),
                              ),

                            ],
                          ),
                          height: 200,
                          width: profiledp,
                          decoration: BoxDecoration(
                            //color: Colors.deepOrange,
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                image: AssetImage("assets/image/FB_IMG_1591515477353.jpg"),
                              fit: BoxFit.fill)
                             ),


                          //child: Image.asset("assets/image/FB_IMG_1591515477353.jpg",fit: BoxFit.cover,),

                        ),
                      ),


                         Positioned(
                           top:130,
                           left: profiledp/2-75,
                           child: InkWell(
                            onTap: (){

                            },
                            child: Container(
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(180),
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  height: 150,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(180),
                                    image: DecorationImage(
                                      image: AssetImage("assets/image/FB_IMG_1591515546161.jpg"),
                                      fit: BoxFit.cover
                                    )

                                  )

                                ),
                              ),
                            ),




                        ),
                         ),
                      Positioned(
                       top: 240,
                        left:profiledp/2+43,

                        child: InkWell(
                          onTap: (){

                          },
                          child: Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(180),
                                  color: Colors.grey
                              ),
                              child: Icon(Icons.camera_alt)),
                        ),
                      ),
                    ],

                  ),

                ),
              ),
            Column(
              children: [
                InkWell(
                  onTap: (){

                  },
                  child: Text("Neamul Fahim",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w800
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: (){

                    },
                    child: Text("আজ ফাগুনী পূর্ণিমা রাতে চল পলায়ে যাই।",
                    maxLines: 5,
                    textAlign: TextAlign.justify,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 35,
                        width: 180,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                              color:Colors.blue,
                        ),
                       child: Row(
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(left: 15.0),
                             child: Icon(Icons.add_circle_sharp,
                             color: Colors.white,
                               size: 30,
                             ),
                           ),

                           Text("    Creat story",
                           style: TextStyle(
                             color: Colors.white,
                             fontWeight: FontWeight.w400,
                             fontSize: 20,

                           ),
                           ),
                         ],
                       )
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                          height: 35,
                          width: 180,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color:Colors.grey,
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Icon(Icons.architecture_sharp,
                                color: Colors.black,
                                  size: 30,
                                ),

                              ),

                              Text("    Edit profile",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20

                                ),
                              ),
                            ],
                          )
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                          height: 35,
                          width: 50,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color:Colors.grey,
                          ),
                          child: InkWell(
                            onTap: (){

                            },
                            child: Text("   ...",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 22

                              ),
                            ),
                          )
                      ),
                    ),
                  ],
                )
              ],

            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.access_time_filled_sharp),
                  Text("  Joined August 2012",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 18
                  ),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text("...",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                          fontSize: 22

                      ),
                    ),
                  ),
                  Text("   See your About info",
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 18
                    ),),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
