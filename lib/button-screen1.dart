import 'package:flutter/material.dart';

class BtnScreent1 extends StatefulWidget {
  const BtnScreent1({Key? key}) : super(key: key);

  @override
  State<BtnScreent1> createState() => _BtnScreent1State();
}

class _BtnScreent1State extends State<BtnScreent1> {
  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(

      ),
      body: Container(
        child: Text("this is second screen",style: TextStyle(
            color: Colors.black,fontSize: ((screenwidth+screenheight)/2)*0.04,
            fontWeight: FontWeight.w300
        ),),
      ),
    );
  }
}
