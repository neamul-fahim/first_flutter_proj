import 'package:first_flutter_p/image-full.dart';
import 'package:flutter/material.dart';

class GridViewImage extends StatefulWidget {
   List<String> imagelink;
   List<String> namelink;
   GridViewImage({Key? key,
   required this.imagelink,
    required this.namelink
  }) : super(key: key);
  @override
  State<GridViewImage> createState() => _GridViewImageState();
}

class _GridViewImageState extends State<GridViewImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title:Text("Gridview")
      ),

      body: GridView.count(
          crossAxisCount: 3,
              children: [
                for(int i=0;i<widget.imagelink.length;i++)
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        style: BorderStyle.solid
                      )
                    ),
                     // height: 200,
                     //width: 200,

                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>FullImage(
                              imagelink: widget.imagelink,
                              namelink: widget.namelink,
                                index:i
                          )));
                        },
                          child: Image.asset(widget.imagelink[i],fit:BoxFit.cover))),

        ],
      ),
    );
  }
}
