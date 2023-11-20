// ignore_for_file: unused_local_variable

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:plantapp/customwidgets.dart/customwidgets.dart';
import 'package:plantapp/utilis/colorconst.dart';
import 'package:plantapp/views/login.dart';

// ignore: must_be_immutable
class Signup extends StatefulWidget {
   Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {

signup(context)async{
try {
  final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
    email: email.text,
    password: password.text,
  );
  Navigator.pop(context);
} on FirebaseAuthException catch (e) {
  if (e.code == 'weak-password') {
    print('The password provided is too weak.');
  } else if (e.code == 'email-already-in-use') {
    print('The account already exists for that email.');
  }
} catch (e) {
  print(e);
}
}

  
   TextEditingController name= TextEditingController();

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
      
              Image.asset("assets/images/1.png",
              
              height: 70,
              ),
      
      
      SizedBox(height: 25,),
         Text("Register",style: TextStyle(
      
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
        Text("Full Name"),
        
         SizedBox(height: 10,),
        
               TextField(
        
          obscureText: false,
        
        controller: name,
        
        decoration: InputDecoration(
        
          border: OutlineInputBorder(
        
            borderRadius: BorderRadius.circular(20),
        
          ),
        
          hintText: "Enter Name",
        
           
        
        
        
          
        
          
        
        ),
        
               ),
        
        
        
        
        
        
        
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
                  signup(context);
                },
                child: Text("Sign In"),
         ),
      
      SizedBox(height: 10,),
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
            backgroundColor: Color(000000),
            minimumSize: Size(300, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32)
            )
          ),
          onPressed: () {
          
        }, child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        
            FaIcon(FontAwesomeIcons.squareGooglePlus,color: Colors.blue,),
            SizedBox(width: 30,),
            Center(child: Text("Sign in With Google ",
            style: TextStyle(color: Color(0xffCDCACA)),
            
            ))
          ],
        )),
      
      SizedBox(height: 20,),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));
                },
                child: Text.rich(
                  TextSpan(
                    text: "Already Have Account an account ? ",
                    children: [
                      TextSpan(
                        text: "Login",
                        style: TextStyle(
                          color: Colors.red
                        )
                      )
                          ])),
              )
            
            ],
          ),
        )),
      ),
    );
  }
}