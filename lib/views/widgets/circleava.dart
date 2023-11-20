import 'package:flutter/material.dart';

Widget customcircle(assetName,radius){
  return CircleAvatar(
backgroundImage: AssetImage(assetName),
radius: 20 ,
backgroundColor: Colors.black,
foregroundColor: Colors.black,

  );
}