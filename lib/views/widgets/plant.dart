import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Plant extends StatelessWidget {
  const Plant({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [

SizedBox(height: 30,),

          IconButton(onPressed: () {
            Navigator.pop(context);
          }, icon: FaIcon(FontAwesomeIcons.arrowLeft))


        ],
      )),
    );
  }
}