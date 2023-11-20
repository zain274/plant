import 'package:flutter/material.dart';

Widget customTextfield(controoler,Hintext){
  return TextField(
  obscureText: Hintext == 'Password' ? true : false,
    controller: controoler,
    decoration: InputDecoration(
      hintText: Hintext,


      // if(Hintext == 'Password'){
      // Icon(Icons.remove_red_eye)
      // }
       
      // suffixIcon: Hintext == "password" ?
      // Icon(Icons.remove_red_eye)
      //  :false

      
      
      
    ),
  );
}