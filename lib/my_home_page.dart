import 'package:first_flutter_p/image-full.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

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
      body:Container(
        height:screenheight,
        width:screenwidth,
        color: Colors.greenAccent,


        child:Row(
          //mainAxisAlignment:MainAxisAlignment.spaceEvenly,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute
                      (builder: (context)=>FullImage(
                        imageLink: "https://thumbs.dreamstime.com/b/beautiful-rain-forest-ang-ka-nature-trail-doi-inthanon-national-park-thailand-36703721.jpg"
                    )));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 3,
                        //style: BorderStyle.solid
                      ),
                   borderRadius: BorderRadius.circular(25) ,
                      image: DecorationImage(
                        image: NetworkImage("https://thumbs.dreamstime.com/b/beautiful-rain-forest-ang-ka-nature-trail-doi-inthanon-national-park-thailand-36703721.jpg"
                        ),fit:BoxFit.fill
                      )
                    ),
                    height: 200,//screenheight/5,
                    width:200, //screenwidth/2,
                    /*child: Image.network(
                      "https://thumbs.dreamstime.com/b/beautiful-rain-forest-ang-ka-nature-trail-doi-inthanon-national-park-thailand-36703721.jpg",
                      fit: BoxFit.cover,
                    ),*/
                  ),
                ),
                Text("nature picture"),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 3,
                        //style: BorderStyle.solid
                      ),
                      borderRadius: BorderRadius.circular(25) ,
                      image: DecorationImage(
                          image: NetworkImage("https://thumbs.dreamstime.com/b/beautiful-rain-forest-ang-ka-nature-trail-doi-inthanon-national-park-thailand-36703721.jpg"
                          ),fit:BoxFit.fill
                      )
                  ),
                  height: 200,//screenheight/5,
                  width:200, //screenwidth/2,
                  /*child: Image.network(
                    "https://thumbs.dreamstime.com/b/beautiful-rain-forest-ang-ka-nature-trail-doi-inthanon-national-park-thailand-36703721.jpg",
                    fit: BoxFit.cover,
                  ),*/
                ),

              ],
            ),

            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25) ,
                      image: DecorationImage(
                          image: AssetImage("assets/image/pic1.jpg"
                          ),fit:BoxFit.fill
                      )
                  ),
                  height:200,//screenheight/5,
                  width: 200,//screenwidth/2,
                  /*child: Image.network(
                    "https://thumbs.dreamstime.com/b/beautiful-rain-forest-ang-ka-nature-trail-doi-inthanon-national-park-thailand-36703721.jpg",
                    fit: BoxFit.cover,
                  ),*/
                ),
                Text("nature picture"),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25) ,
                      image: DecorationImage(
                          image: AssetImage("assets/image/pic1.jpg"
                          ),fit:BoxFit.fill
                      )
                  ),
                  height:200,//screenheight/5,
                  width: 200,//screenwidth/2,
                  /*child: Image.network(
                    "https://thumbs.dreamstime.com/b/beautiful-rain-forest-ang-ka-nature-trail-doi-inthanon-national-park-thailand-36703721.jpg",
                    fit: BoxFit.cover,
                  ),*/
                ),
              ],
            ),

          ],
        ),

        /* child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [

                    Text("name:",style: TextStyle(
                        color: Colors.black,fontSize: ((screenwidth+screenheight)/2)*0.04,
                        fontWeight: FontWeight.w300
                    ),),
                    Spacer(),
                    Text("neamul fahim",style: TextStyle(
                        color: Colors.black,fontSize: ((screenwidth+screenheight)/2)*0.04,
                        fontWeight: FontWeight.w300
                    ),),
                  ],
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text("i live in bangladesh",style: TextStyle(
                    color: Colors.black,fontSize: ((screenwidth+screenheight)/2)*0.05,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500,backgroundColor: Colors.redAccent
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text("it is my homeland",style: TextStyle(
                    color: Colors.black,fontSize: ((screenwidth+screenheight)/2)*0.05,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500,backgroundColor: Colors.redAccent
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text("i love my country",style: TextStyle(
                    color: Colors.black,fontSize: ((screenwidth+screenheight)/2)*0.05,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500,backgroundColor: Colors.redAccent
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text("i love my country",style: TextStyle(
                    color: Colors.black,fontSize: ((screenwidth+screenheight)/2)*0.05,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500,backgroundColor: Colors.redAccent
                ),),
              ),Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text("i love my country",style: TextStyle(
                    color: Colors.black,fontSize: ((screenwidth+screenheight)/2)*0.05,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500,backgroundColor: Colors.redAccent
                ),),
              ),Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text("i love my country",style: TextStyle(
                    color: Colors.black,fontSize: ((screenwidth+screenheight)/2)*0.05,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500,backgroundColor: Colors.redAccent
                ),),
              ),Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text("i love my country",style: TextStyle(
                    color: Colors.black,fontSize: ((screenwidth+screenheight)/2)*0.05,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500,backgroundColor: Colors.redAccent
                ),),
              ),Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text("i love my country",style: TextStyle(
                    color: Colors.black,fontSize: ((screenwidth+screenheight)/2)*0.05,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500,backgroundColor: Colors.redAccent
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text("i love my country",style: TextStyle(
                    color: Colors.black,fontSize: ((screenwidth+screenheight)/2)*0.05,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500,backgroundColor: Colors.redAccent
                ),),
              ),Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text("i love my country",style: TextStyle(
                    color: Colors.black,fontSize: ((screenwidth+screenheight)/2)*0.05,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500,backgroundColor: Colors.redAccent
                ),),
              ),Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text("i love my country",style: TextStyle(
                    color: Colors.black,fontSize: ((screenwidth+screenheight)/2)*0.05,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500,backgroundColor: Colors.redAccent
                ),),
              ),

            ],
          ),
        ), */


      ) ,
    );
  }
}
