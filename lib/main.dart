// ignore_for_file: unused_import

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:plantapp/firebase_options.dart';
import 'package:plantapp/views/Sigup.dart';
import 'package:plantapp/views/home.dart';
import 'package:plantapp/views/home2.dart';
// import 'package:plantapp/views/Sigup.dart';
import 'package:plantapp/views/login.dart';

void main()async{

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}