import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FullImage extends StatefulWidget {
  String imageLink;
  String name;
   FullImage({Key? key,
    required this.imageLink,
    required this.name
  }) : super(key: key);

  @override
  State<FullImage> createState() => _FullImageState();
}

class _FullImageState extends State<FullImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body:  Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            SizedBox(
                height: MediaQuery.of(context).size.height-80,
                child: Image.network(widget.imageLink,fit:BoxFit.fill,)),
            Text(widget.name)
          ],
        ),
      ),
    );
  }
}
