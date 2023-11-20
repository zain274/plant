// ignore_for_file: unused_local_variable

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:plantapp/customwidgets.dart/customwidgets.dart';
import 'package:plantapp/utilis/colorconst.dart';
import 'package:plantapp/views/Sigup.dart';
import 'package:plantapp/views/home.dart';
// import 'package:plantapp/views/Sigup.dart';

// ignore: must_be_immutable
class Login extends StatefulWidget {
   Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

Login(context)async{
  try {
  final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: email.text,
    password: password.text
  );
  Navigator.push(context, MaterialPageRoute(builder: (context) => Homeview(),));
  email.clear();
  password.clear();
} on FirebaseAuthException catch (e) {
  if (e.code == 'user-not-found') {
    print('No user found for that email.');
  } else if (e.code == 'wrong-password') {
    print('Wrong password provided for that user.');
  }
}
}

      TextEditingController email= TextEditingController();

         TextEditingController password= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Plantnob",style: TextStyle(
      
                  fontSize: 30,
                  color: ColorsCOnstcolors.plantnobcolorfirst,
                  fontWeight: FontWeight.bold,
      
                  
              ),),
      SizedBox(height: 20,),
      
              Image.asset("assets/images/basiclogo.jpg",
              
              height: 70,
              ),
      
      
      SizedBox(height: 25,),
         Text("Welcome Back",style: TextStyle(
      
                  fontSize: 30,
                  color: ColorsCOnstcolors.plantnobcolorfirst,
                  fontWeight: FontWeight.bold,
      
                  
              ),),
      
      
              Text("Create Your New Account",style: TextStyle(color: Color(0xff000000)),
              
              
              ),
      
      
      SizedBox(height: 20,),
      
      
      
      Padding(
        padding: const EdgeInsets.all(10.0),
        child:   Column(
        
          crossAxisAlignment: CrossAxisAlignment.start,
        
          children: [
        SizedBox(height: 10,),
        
        
        
        
        
        
        
        
               SizedBox(height: 15,),
        
               Text("Email",),
        
         SizedBox(height: 10,),
        
               TextField(
        
          obscureText: false,
        
        controller: email,
        
        decoration: InputDecoration(
        
          border: OutlineInputBorder(
      
      
               borderRadius: BorderRadius.circular(20),
          ),
        
          hintText: "Enter Email",
        
           
        
        
        
          
        
          
        
        ),
        
               ),
        
        
        
        
        
        
        
        SizedBox(height: 10,),
        
               Text("Password"),
        
        SizedBox(height: 10,),
        
               TextField(
        
          obscureText: true,
        
        controller: password,
        
        decoration: InputDecoration(
        
          border: OutlineInputBorder(
      
      
               borderRadius: BorderRadius.circular(20),
          ),
        
          hintText: "Minimum 8 characters",
        
           suffixIcon: Icon(Icons.remove_red_eye)
        
        
        
          
        
          
        
        ),
        
               ),
        
        
        
        
        
        
        
        
        
                
        
        
        
        
        
          
        
          
        
          ],
        
        ),
      ),
      
      SizedBox(height: 15,),
         ElevatedButton(
                style: ElevatedButton.styleFrom(
                
                 backgroundColor: ColorsCOnstcolors.buttoncolor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0)),
                  minimumSize: Size(320,50), //////// HERE
                ),
                onPressed: () {
                  Login(context);
                },
                child: Text("Sign In"),
         ),
      
      SizedBox(height: 25,),
         Divider(
           color: ColorsCOnstcolors.plantnobcolorfirst, //color of divider
          height: 5, //height spacing of divider
          thickness: 3, //thickness of divier line
          indent: 25, //spacing at the start of divider
          endIndent: 25
         ),
      
      
        //  OutlinedButton(
          
        //   style: ButtonStyle(
        //     // backgroundColor: Colors.brown
        
        //   ),
        //   onPressed: () {
      
      
           
        //  }, child:
         
        //   Row(
        //    children: [
        //     FaIcon(FontAwesomeIcons.google),
        //      Text("Sign in with Google"),
        //    ],
        //  ))
      
      
      
        
              // IconButton.outlined(onPressed: () {
                
              // },
              
              //  icon: FaIcon(FontAwesomeIcons.google))
        
        SizedBox(height: 20,),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xffFFFFFF),
            
            minimumSize: Size(300, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32)
            )
          ),
          onPressed: () {
          
        }, child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        
            FaIcon(FontAwesomeIcons.google,color: Colors.blue,),
            SizedBox(width: 30,),
            Center(child: Text("Sign in With Google ",
            style: TextStyle(color: Color(0xffCDCACA)),
            
            ))
          ],
        )),
      
      SizedBox(height: 30,),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Signup(),));
                },
                child: Text.rich(
                  TextSpan(
                    text: "Dont have an account ? ",
                    style: TextStyle(
                      fontSize: 20
                    ),
                    children: [
                      TextSpan(
                        text: "Register",
                        style: TextStyle(
                          color: Colors.red

                        )
                      )
                        ])),
              )



            //   Text("Dont have an account ?" ,style: TextStyle(
            //     fontSize: 20
            //   ),),
            // Text("Dont have an account ?" ,style: TextStyle(
            //     fontSize: 20
            //   ),)
            ],
          ),
        )),
      ),
    );
  }
}