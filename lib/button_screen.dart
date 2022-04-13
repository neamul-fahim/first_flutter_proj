import 'package:flutter/material.dart';

class BtnScreen extends StatefulWidget {
  const BtnScreen({Key? key}) : super(key: key);

  @override
  State<BtnScreen> createState() => _BtnScreenState();
}

class _BtnScreenState extends State<BtnScreen> {
  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(

      ),
      body: Container(
        child: Text("this is first screen",style: TextStyle(
            color: Colors.black,fontSize: ((screenwidth+screenheight)/2)*0.04,
            fontWeight: FontWeight.w300
        ),),
      ),
    );
  }
}
