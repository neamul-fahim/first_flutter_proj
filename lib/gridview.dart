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
    );
  }
}
