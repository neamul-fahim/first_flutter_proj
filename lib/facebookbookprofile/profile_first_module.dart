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
                  //color: Colors.amber,
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
                          width: 60,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color:Colors.grey,
                          ),
                          child: InkWell(
                            onTap: (){

                            },
                            child: Text("    ...",
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

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 500,
                width: profiledp,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                 // color: Colors.black,
                ),
                child: GridView.count(
                  crossAxisCount:3,
                  children: [
                    for(int i=0;i<widget.feturedpic.length;i++)
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Image.asset(widget.feturedpic[i],fit: BoxFit.fill,),
                      ),
                  ],
                ),
              ),
            ),

      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 30,
          width: profiledp,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            color: Colors.blue,
          ),
          child: Center(
              child: Text("Edit public details",
              style: TextStyle(
                fontSize: 20
              ),
              )),
        ),
      ),

            Container(
        //height: 100,
       // width: profiledp,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
         // color: Colors.blue,
        ),
        child: Text("----------------------------------------------------------------------------------"
            "-----------------------------------------------"),
      ),


            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text("Friends",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),),
                  Spacer(),
                  Text("Find",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.indigo,
                    ),),


                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 8.0,bottom: 8),
              child: Row(
                children: [
                  Text("566 friends",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),),
                  Spacer(),
                  Text("Friends",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.indigo,
                    ),),


                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 8),
              child: Container(
                height: 320,
                width: profiledp,
               // decoration: BoxDecoration(
                //  borderRadius: BorderRadius.circular(10),
                  // color: Colors.black,
              //  ),
                child: GridView.count(
                  crossAxisCount:3,
                  children: [
                    for(int i=0;i<widget.feturedpic.length-3;i++)
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Column(
                           children: [
                             Container(
                               height: 120,
                               width: profiledp,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(10),
                                  //color: Colors.black,
                               ),
                               child: Container(
                                 height: 10,
                                 width: profiledp,
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(10),
                                    //color: Colors.black,
                                 ),
                                 child: Image.asset(widget.feturedpic[i],
                                   fit: BoxFit.fill,),
                               ),
                             ),
                             Text("Name",
                               style: TextStyle(
                                 fontWeight: FontWeight.w400,
                             ),
                             )
                           ],
                         ),
                      ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 8),
              child: Container(
                height: 30,
                width: profiledp,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Colors.grey,
                ),
                child: Center(
                    child: Text("See all friends",
                      style: TextStyle(
                          fontSize: 20
                      ),
                    )),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 18.0,bottom: 8),
              child: Container(
                height: 12,
                width: profiledp,
                decoration: BoxDecoration(
                  color: Colors.grey,


                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text("Posts",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                    ),),
                     Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 28,
                      width: 45,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(5),

                      ),
                        child: Icon(Icons.wrap_text_sharp),

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 28,
                        width: 45,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Icon(Icons.settings)),
                  ),

                ],
              ),
            ),

       Padding(
         padding: const EdgeInsets.all(8.0),
         child: Row(
           children: [
              Container(
                 height: 50,
                 width: 50,
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(180),
                     image: DecorationImage(
                         image: AssetImage("assets/image/FB_IMG_1591515546161.jpg"),
                         fit: BoxFit.cover
                     )
                 )
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Text("Whats on your your mind?",
               style: TextStyle(
                 fontWeight: FontWeight.w500,
                 fontSize: 17,
               ),),
             ),


           ],
         ),


       ),

            Container(
              //height: 100,
              // width: profiledp,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                // color: Colors.blue,
              ),
              child: Text("----------------------------------------------------------------------------------"
                  "-----------------------------------------------"),
            ),
           Row(
             children: [
               Padding(
                 padding: const EdgeInsets.only(left: 30.0),
                 child: Icon(Icons.video_call_rounded,
                  color: Colors.red,
                 ),
               ),
                Text("Live"),

               Padding(
                 padding: const EdgeInsets.only(left: 60.0),
                 child: Text("|"),
               ),

               Padding(
                 padding: const EdgeInsets.only(left: 60.0),
                 child: Icon(Icons.photo_library_outlined,
                   color: Colors.lightGreen,
                 ),
               ),
               Text("Photo"),
               Padding(
                 padding: const EdgeInsets.only(left: 60.0),
                 child: Text("|"),
               ),
               Padding(
                 padding: const EdgeInsets.only(left: 60.0),
                 child: Icon(Icons.flag,
                   color: Colors.indigo,
                 ),
               ),
               Text("Life event"),


             ],
           ),

            Padding(
              padding: const EdgeInsets.only(top: 18.0,bottom: 8),
              child: Container(
                height: 12,
                width: profiledp,
                decoration: BoxDecoration(
                  color: Colors.grey,


                ),
              ),
            ),

           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Row(
               children: [
                 Padding(
                   padding: const EdgeInsets.only(left: 20.0),
                   child: Container(
                     height: 40,
                     width: 120,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(30),
                       color: Colors.grey,
                     ),
                     child: Row(
                       children: [
                         Padding(
                           padding: const EdgeInsets.only(left:20.0),
                           child: Icon(Icons.photo_library_outlined,
                           color: Colors.black,
                            // size: 20,
                           ),
                         ),
                           Text("Photos",
                           style: TextStyle(
                             fontWeight: FontWeight.w800
                           ),),

                       ],
                     ),
                   ),
                 ),


                 Padding(
                   padding: const EdgeInsets.only(left: 20.0),
                   child: Container(
                     height: 40,
                     width: 120,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(30),
                       color: Colors.grey,
                     ),
                     child: Row(
                       children: [
                         Padding(
                           padding: const EdgeInsets.only(left:20.0),
                           child: Icon(Icons.face_rounded,
                             color: Colors.black,
                             // size: 20,
                           ),
                         ),
                         Text("Avatars",
                           style: TextStyle(
                               fontWeight: FontWeight.w800
                           ),),

                       ],
                     ),
                   ),
                 ),

                 Padding(
                   padding: const EdgeInsets.only(left: 20.0),
                   child: Container(
                     height: 40,
                     width: 160,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(30),
                       color: Colors.grey,
                     ),
                     child: Row(
                       children: [
                         Padding(
                           padding: const EdgeInsets.only(left:32.0),
                           child: Icon(Icons.star,
                             color: Colors.black,
                             // size: 20,
                           ),
                         ),
                         Text("Life events",
                           style: TextStyle(
                               fontWeight: FontWeight.w800
                           ),),

                       ],
                     ),
                   ),
                 ),


               ],
             ),
           ),


            Padding(
              padding: const EdgeInsets.only(top: 18.0,bottom: 8),
              child: Container(
                height: 12,
                width: profiledp,
                decoration: BoxDecoration(
                  color: Colors.grey,


                ),
              ),
            ),



            Container(
              height: 500,
              width: profiledp,
              decoration: BoxDecoration(
                //color: Colors.grey,


              ),
            ),


          ],
        ),
      ),
    );
  }
}
