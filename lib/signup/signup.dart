import 'package:first_flutter_p/helps/pictures.dart';
import 'package:first_flutter_p/helps/strings.dart';
import 'package:first_flutter_p/login/login.dart';
import 'package:flutter/material.dart';


class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);


  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

    List<String>genderList=["Select gender","Male","Female","Others"];
   String selectedGender=genderList[0];
    AllPictures allPictures=AllPictures();
    AllStrings allStrings=AllStrings();


final _formkey=GlobalKey<FormState>();

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    double dynamicHeight=MediaQuery.of(context).size.height;
    double dynamicWidth=MediaQuery.of(context).size.width;


    return Scaffold(
      appBar: AppBar(

      ),
      body: Container(
        //color: Colors.indigo,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(///normally the container doesn't take the full screen unless we use mediaquery or decoration

            color: Colors.indigo,
            image: DecorationImage(
                image: AssetImage(allPictures.loginback),
                fit: BoxFit.fill
            )
        ),

        // child:Image.asset(allPictures.loginback,fit: BoxFit.cover,),
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:50 ,bottom: 0,right: 310,left:0 ),
                child: Text("SIGNUP",style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 30
                ),),
              ),

              Padding(
                padding:  EdgeInsets.only(top:20.0,bottom:0 ,left:0 ,right:0 ),
                child: Container(
                  //color: Colors.white,

                  height: dynamicHeight*0.13,
                  width: dynamicWidth*0.4,
                  child: TextFormField(
                    validator: (inputString){
                      if(inputString==null || inputString.isEmpty)
                      {
                        return "This field can't be empty";
                      }
                      else if(inputString!=allStrings.email)
                      {
                        return "Wrong email";
                      }
                      return null;

                    },
                    showCursor: true,
                    cursorColor: Colors.indigo,
                    // cursorHeight: 30,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.email_sharp,
                        color: Colors.black,
                      ),
                      hintText: "Enter your email",
                      label:Text("Email"),
                      labelStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w800
                      ),


                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          //style: BorderStyle.solid,
                          width: 2.5,
                          color: Colors.indigo,
                        ),

                        borderRadius: BorderRadius.only(topLeft:Radius.circular(10) ,topRight:Radius.circular(0) ,
                            bottomLeft:Radius.circular(0) ,bottomRight:Radius.circular(10) ),
                      ),
                      enabledBorder:  UnderlineInputBorder(
                        borderSide: BorderSide(
                          //style: BorderStyle.solid,
                          width: 5,
                          color: Colors.lightGreen,
                        ),

                        borderRadius: BorderRadius.only(topLeft:Radius.circular(0) ,topRight:Radius.circular(0) ,
                            bottomLeft:Radius.circular(0) ,bottomRight:Radius.circular(0) ),
                      ),

                      errorBorder:UnderlineInputBorder(
                        borderSide: BorderSide(
                          //style: BorderStyle.solid,
                          width: 5,
                          color: Colors.red,
                        ),

                        borderRadius: BorderRadius.only(topLeft:Radius.circular(10) ,topRight:Radius.circular(0) ,
                            bottomLeft:Radius.circular(0) ,bottomRight:Radius.circular(10) ),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          //style: BorderStyle.solid,
                          width: 2.5,
                          color: Colors.red,
                        ),

                        borderRadius: BorderRadius.only(topLeft:Radius.circular(10) ,topRight:Radius.circular(0) ,
                            bottomLeft:Radius.circular(0) ,bottomRight:Radius.circular(10) ),
                      ),



                    ),
                  ),
                ),
              ),



              Padding(
                padding:  EdgeInsets.only(top: 25.0,bottom:0 ,left:0 ,right:0 ),
                child: Container(
                  //color: Colors.white,

                  height: dynamicHeight*0.13,
                  width: dynamicWidth*0.4,
                  child: TextFormField(
                    validator: (inputString){

                      if(inputString== null || inputString.isEmpty) {
                        return "This field can't be empty";
                      }
                      else if(allStrings.passward!=inputString)
                      {
                        return "Passward incorrect";
                      }
                      return null;
                    },
                    obscuringCharacter: "*",
                    obscureText:allStrings.obscureText ,
                    showCursor: true,
                    cursorColor: Colors.indigo,
                    // cursorHeight: 30,
                    decoration: InputDecoration(
                      //contentPadding: EdgeInsets.only(left: 5,right: 5,top: 8,bottom: 8),
                      //floatingLabelAlignment: FloatingLabelAlignment.center,
                      //floatingLabelBehavior: FloatingLabelBehavior.auto,

                      suffixIcon: InkWell(
                          onTap: (){
                            setState(() {
                              if(allStrings.obscureText==true) {
                                allStrings.obscureText = false;
                              }
                              else
                              {
                                allStrings.obscureText = true;
                              }
                            });

                          },

                          child: Icon(Icons.remove_red_eye_rounded,
                            color: Colors.black,)),
                      hintText: "Enter your password",
                      label:Text(" Password"),
                      labelStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w800
                      ),


                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          //style: BorderStyle.solid,
                          width: 2.5,
                          color: Colors.indigo,
                        ),

                        borderRadius: BorderRadius.only(topLeft:Radius.circular(10) ,topRight:Radius.circular(0) ,
                            bottomLeft:Radius.circular(0) ,bottomRight:Radius.circular(10) ),
                      ),


                      enabledBorder:  UnderlineInputBorder(
                        borderSide: BorderSide(
                          //style: BorderStyle.solid,
                          width: 5,
                          color: Colors.lightGreen,
                        ),


                        borderRadius: BorderRadius.only(topLeft:Radius.circular(0) ,topRight:Radius.circular(0) ,
                            bottomLeft:Radius.circular(0) ,bottomRight:Radius.circular(0) ),

                      ),





                      errorBorder:UnderlineInputBorder(
                        borderSide: BorderSide(
                          //style: BorderStyle.solid,
                          width: 5,
                          color: Colors.red,
                        ),

                        borderRadius: BorderRadius.only(topLeft:Radius.circular(10) ,topRight:Radius.circular(0) ,
                            bottomLeft:Radius.circular(0) ,bottomRight:Radius.circular(10) ),
                      ),



                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          //style: BorderStyle.solid,
                          width: 2.5,
                          color: Colors.red,
                        ),

                        borderRadius: BorderRadius.only(topLeft:Radius.circular(10) ,topRight:Radius.circular(0) ,
                            bottomLeft:Radius.circular(0) ,bottomRight:Radius.circular(10) ),
                      ),








                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0,right:0 ,top: 2,bottom:0 ),
                child: Container(

                  height: dynamicHeight*0.06,
                  width: dynamicWidth*0.4,
                  child: ElevatedButton(

                      onPressed:() {
                        if(_formkey.currentState!.validate())
                        {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content:Text("Signed Up") ));

                        }
                      },
                      child: Text("Sign UP")),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: 120,
                  decoration: BoxDecoration(
                   // borderRadius: BorderRadius.circular(20),
                    //color: Colors.white

                  ),
                  child: DropdownButton(
                  //itemHeight: kMinInteractiveDimension,
                    alignment: Alignment.center,
                    style: TextStyle(
                      color: Colors.white
                    ),
                    borderRadius: BorderRadius.circular(30),
                    underline: Text(""),
                    //iconDisabledColor: Colors.orange,
                    dropdownColor: Colors.deepOrangeAccent,
                      iconEnabledColor: Colors.deepOrangeAccent,
                      focusColor: Colors.deepOrangeAccent,
                      value: selectedGender,
                      items: genderList.map((gender){
                        return DropdownMenuItem<String>(
                          value: gender,
                          child: Text(gender),
                        );
                      }
                      ).toList(),


                      onChanged: (newValue){
                        setState(() {
                          selectedGender=newValue.toString();
                        });

                      }),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Have an account?",style: TextStyle(
                      color: Colors.deepOrangeAccent,
                    ),),
                    InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (conext)=>LoginPage()));
                        },
                        child: Container(
                            height: dynamicHeight*0.05,
                            width: dynamicWidth*0.05,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),topLeft:Radius.circular(10) ,
                                  bottomLeft:Radius.circular(10) ,bottomRight: Radius.circular(10)),
                              color: Colors.deepOrangeAccent,
                            ),

                            child: Center(child: Text("login")))),

                  ],
                ),
              ),



            ],

          ),
        ),




      ),
    );
  }
}
