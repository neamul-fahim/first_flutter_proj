import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage()
    );
  }
}
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
         child: SingleChildScrollView(
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
                     Spacer(
                       flex: 100,
                     ),
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
         ),


       ) ,
     );
   }
 }
 