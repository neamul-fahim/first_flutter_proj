import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FullImage extends StatefulWidget {
 List <String> imagelink;
 List <String> namelink;
  int index;

   FullImage({Key? key,
    required this.imagelink,
    required this.namelink,
     required this.index
  }) : super(key: key);

  @override
  State<FullImage> createState() => _FullImageState();
}
  //int indexalter=widget.index; **************************************

class _FullImageState extends State<FullImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

      ),
      body:  Column(
        children: [

          Text(widget.namelink[widget.index],
          style: TextStyle(
            fontWeight: FontWeight.w800,fontSize: 30
          ),),
          SizedBox(
              height: MediaQuery.of(context).size.height-200,
              child: Image.network(widget.imagelink[widget.index],fit:BoxFit.cover,)),

           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               InkWell(
                   onTap: (){
                     setState(() {
                       if(widget.index>0)
                         widget.index=widget.index-1;

                     });
                   },
                   child: Icon(Icons.arrow_back_ios_outlined)),
               InkWell(
                   onTap: () {
                     setState(() {
                       if (widget.index < widget.imagelink.length-1)
                         widget.index = widget.index + 1;
                     });
                   },
                   child: Icon(Icons.arrow_forward_ios_outlined))

             ],
           ),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for( int i=0;i<widget.imagelink.length;i++)
                 InkWell(
                     onTap: (){setState(() {
                       widget.index=i;
                     });

                       },
                     child: Container(
                       height: 80,
                         width: 80,
                         child: Image.asset(widget.imagelink[i]))) ,
              ],
            ),
          )
        ],
      ),
    );
  }
}
