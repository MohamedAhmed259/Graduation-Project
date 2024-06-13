import 'dart:async';

import 'package:flutter/material.dart';
import 'package:untitled2/twopage.dart';
import 'myMenu.dart';
import 'sign up.dart';

class FirstApp extends StatefulWidget {

  @override
  State<FirstApp> createState() => _FirstAppState();
}

class _FirstAppState extends State<FirstApp> {
  @override
  void initState() {

    super.initState(
    );
    Timer(  const Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyApp()));
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xfff0ede6),
      child: Image.asset("assets/image/mm.PNG"),
    );
  }
}