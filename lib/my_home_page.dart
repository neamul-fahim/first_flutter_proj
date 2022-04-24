import 'package:first_flutter_p/button-screen1.dart';
import 'package:first_flutter_p/button_screen.dart';
import 'package:first_flutter_p/gridview.dart';
import 'package:first_flutter_p/image-full.dart';
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

   List<String> imagelist=[
     'assets/image/pic1.jpg',
     'assets/image/pic1.jpg',
     'assets/image/pic2.jpg',
     'assets/image/pic2.jpg'];
   List<String> namelist=['pic1','pic2','pic3','pic4'];

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
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
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
                                    imageLink: imagelist[index],
                                    name: namelist[index])));
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




















      /*body:Container(
        height:screenheight,
        width:screenwidth,
        color: Colors.greenAccent,
          child:Row(
          //mainAxisAlignment:MainAxisAlignment.spaceEvenly,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SizedBox(
                    height: 50,
                    width: 100,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.amber
                      ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>BtnScreen()));
      },
                        child: Text("this is button 1")),
                  ),
                ),
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
               Padding(

                 padding: const EdgeInsets.all(20.0),
                 child: SizedBox(
                   height: 50,
                   width: 100,
                   child: ElevatedButton(
                       style: ElevatedButton.styleFrom(
                           primary: btnColor
                       ),
                       onPressed: (){
                         setState(() {
                           btnColor=Colors.red;
                           btnText="you made me red";

                         });
                       },
                       child: Text(btnText)),
                 ),
               ),
             ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SizedBox(
                    height: 50,
                    width: 100,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.amber
                        ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>BtnScreent1()));
                        },
                        child: Text("this is button 2")),
                  ),
                ),
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
        */









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
