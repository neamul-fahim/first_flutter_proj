
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
  double altheight=80;
  double altwidth=80;
class _FullImageState extends State<FullImage> {
  @override
  Widget build(BuildContext context) {
    int arr = widget.index;  //************************************************************

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
              height: MediaQuery.of(context).size.height-220,
              child: Image.asset(widget.imagelink[widget.index],fit:BoxFit.cover,)),

           Row(  //arrow action
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               SizedBox(
                 width: 50,
               ),
               InkWell(
                   onTap: (){
                     setState(() {
                       if(widget.index>0)
                         {
                           widget.index=widget.index-1;
                         }


                     });
                   },
                   child: Icon(Icons.arrow_back_ios_outlined)),
               Spacer(),


               InkWell(
                   onTap: () {
                     setState(() {
                       if (widget.index < widget.imagelink.length-1)
                         widget.index = widget.index + 1;
                     });
                   },
                   child: Icon(Icons.arrow_forward_ios_outlined)),
               SizedBox(
                 width: 50,
               )


             ],
           ),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for( int i=0;i<widget.imagelink.length;i++)
                  widget.index==i?
                 Padding(
                   padding: const EdgeInsets.all(2.0),
                   child: Container(

                     height: altheight+20,  //initial value of altheight is 80
                       width: altwidth+20,  //initial value of althwidth is 80
                       child: Image.asset(widget.imagelink[i],fit: BoxFit.cover,)
                   ),
                 ) :
                InkWell(
                  onTap: (){
                    setState(() {
                      widget.index=i;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(

                        height: altheight,  //initial value of altheight is 80
                        width: altwidth,  //initial value of althwidth is 80
                        child: Image.asset(widget.imagelink[i],fit: BoxFit.cover,)
                    ),
                  ),
                ) ,

              ],
            ),
          )
        ],
      ),
    );
  }
}
