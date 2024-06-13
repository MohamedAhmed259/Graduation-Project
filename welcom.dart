// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
//
// class   welcom extends StatefulWidget {
//   @override
//
//   State<welcom> createState() => _State();
// }
//
// class _State extends State<welcom> {
//   final user = FirebaseAuth.instance.currentUser!;
//   Future<void> signOut() async {
//     await FirebaseAuth.instance.signOut();
//   }
//    void  opensignout(){
//    // Navigator.of(context).pushReplacementNamed('/');
//
//
//    }
//   @override
//
//   Widget build (BuildContext context) {
//
//     return Scaffold(
//
//       body: Center(
//
//         child: Column (
//
//           mainAxisAlignment: MainAxisAlignment.center,
//
//           children: [
//
//           const Text(
//
//           'Hello, Your\'re signed in',
//
//           style: TextStyle(fontSize: 22),
//
//         ), // Text
//
//         Text(
//
//           user.email!,
//
//           style: TextStyle(fontSize: 22),
//
//         ), // Text
//
//         MaterialButton(
//
//           onPressed: () {
//
//              //FirebaseAuth.instance.signOut();
//              user.signOut();
//              Navigator.pop(context);
//           },
//
//           color: Color(0xffbc98a1),
//
//
//           child: GestureDetector(
//               onTap: opensignout,
//               child: Text('sign out')),
//
//         ), // MaterialButton
//       ],
//          ), // Column
//
//     ) , // Center
//     ); // Scaffold
//
//   }
//
// }
/////////////////////////////////////////////////////////////////////////////////////
















import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/pages/sign%20in.dart';

class Welcome extends StatefulWidget {
  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcom,Dear',
              style: TextStyle(fontSize: 22),
            ),
            Text(
              user.email!,
              style: TextStyle(fontSize: 22),
            ),
            MaterialButton(
                onPressed: () async {
                  await signOut();
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => signin()),);
                },
              color: Color(0xffbc98a1),
              child: Text('Sign Out'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
  }
}














































////////////////////////////////////////////////////////////////////////////////////////
//
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
//
// class Welcome extends StatefulWidget {
// @override
// State<Welcome> createState() => _WelcomeState();
// }
//
// class _WelcomeState extends State<Welcome> {
// final user = FirebaseAuth.instance.currentUser!;
//
// Future<void> signOut() async {
// try {
// await FirebaseAuth.instance.signOut();
// Navigator.pop(context);
// } catch (e) {
// print("Error signing out: $e");
// }
// }
//
// @override
// Widget build(BuildContext context) {
// return Scaffold(
// body: Center(
// child: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// const Text(
// 'Hello, You\'re signed in',
// style: TextStyle(fontSize: 22),
// ),
// Text(
// user.email!,
// style: TextStyle(fontSize: 22),
// ),
// MaterialButton(
// onPressed: () {
// signOut();
// },
// color: Color(0xffbc98a1),
// child: Text('Sign Out'),
// ),
// ],
// ),
// ),
// );
// }
// }