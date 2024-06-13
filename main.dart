// import 'dart:io';
//
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:untitled2/firebase_options.dart';
// import 'package:untitled2/pages/Auth.dart';
// import 'package:untitled2/twopage.dart';
// import 'pages/firstpage.dart';
// import 'package:firebase_core/firebase_core.dart';
//
// import 'pages/sign in.dart';
// import 'pages/sign up.dart';
//
// void main() async{
//   WidgetsFlutterBinding.ensureInitialized();
//   Platform.isAndroid ?  await Firebase.initializeApp(
//   ):
//   await Firebase.initializeApp(options:DefaultFirebaseOptions.currentPlatform
//   );
//   FirebaseAuth.instance
//       .authStateChanges()
//       .listen((User? user) {
//     if (user == null) {
//       print('User is currently signed out!');
//     } else {
//       print('User is signed in!');
//     }
//   });
//   // TODO: implement createState
//
//   runApp(
//
//     MaterialApp(
//         debugShowCheckedModeBanner: false,
//        //home: signup(),
//         routes: {
//
//           '/': (context) => Auth(),
//
//           'Twopage': (context) => Twopage(),
//
//           'signup': (context) =>  signup(),
//
//           'signin': (context) => signin(),
//
//          }
//
//       ),
//
//
//   // home:Twopage( ),)
//   );
// }
//
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/foundation.dart';
//
// import 'package:flutter/material.dart';
// import 'package:untitled2/pages/Auth.dart';
// import 'package:untitled2/twopage.dart';
//
// import 'pages/firstpage.dart';
// import 'pages/sign in.dart';
// import 'pages/sign up.dart';
// import 'pages/welcom.dart';

//
//   // WidgetsFlutterBinding.ensureInitialized();
//   // if (kIsWeb) {
//   //   await Firebase.initializeApp(
//   //     options: FirebaseOptions(
//   //       apiKey: "AIzaSyCsHDQtI9DItQgSqwy45_y2xG9tDGxuER8",
//   //       appId: "1:540215271818:web:8b22d4aee01acdce862873",
//   //       messagingSenderId: "540215271818",
//   //       projectId: "flutter-firebase-9c136",
//   //       // Your web Firebase config options
//   //     ),
//   //   );
//   // } else {
//   //   await Firebase.initializeApp();
//   // }

















import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';
import 'package:untitled2/pages/Auth.dart';
import 'package:untitled2/twopage.dart';

import 'pages/firstpage.dart';
import 'pages/sign in.dart';
import 'pages/sign up.dart';
import 'pages/welcom.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyBwTZ0bJFhEZzyiHPU6Vw0EadmhjEk2FHE",
          authDomain: "skin-vision-f9853.firebaseapp.com",
          projectId: "skin-vision-f9853",
          storageBucket: "skin-vision-f9853.appspot.com",
          messagingSenderId: "82070523382",
          appId: "1:82070523382:web:84f6471c61e9856e148bd7"
// Your web Firebase config options
      ),
    );

  }
  else {
    await Firebase.initializeApp();
  }

  FirebaseAuth.instance
      .authStateChanges()
      .listen((User? user) {
    if (user == null) {
      print('User is currently signed out!');
    } else {
      print('User is signed in!');
    }
  });

  // TODO: implement createState

  runApp(

      MaterialApp(
          debugShowCheckedModeBanner: false,


          routes: {

            '/'
                : (context) => Auth()
            ,
            'twopage'
                : (context) => const Twopage(),

            'signup'
                : (context) => signup(),


            'signin'
                : (context) =>  signin(),


          }

      ));
}
