// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// class signup extends StatefulWidget {
//   @override
//   State<signup> createState() => _SignupState();
// }
// class  _SignupState extends State<signup> {
//   final _emailController = TextEditingController();
//   final _PasswordController = TextEditingController();
//   final _confirmPasswordController = TextEditingController();
//
//   Future signUp() async {
//     if (passwordConfirmed()) {
//       await FirebaseAuth.instance.createUserWithEmailAndPassword(
//         email: _emailController.text.trim(),password: _PasswordController.text.trim(),);
//
//      Navigator.of(context).pushNamed('/');
//
//   }}
//   bool passwordConfirmed() {
//     if (_PasswordController.text.trim() == _confirmPasswordController.text.trim()) {
//       return true;
//     } else {
//       return false;
//
//     }} void openSignupScreen() {
//
//   Navigator.of (context).pushReplacementNamed('signup');
// }  @override
//   void dispose() {
//     super.dispose();
//     _emailController.dispose();
//     _PasswordController.dispose();
//     _confirmPasswordController.dispose();
//   }  @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[200],
//       body:SafeArea(
//       child: Center(
//       child: SingleChildScrollView(
//       child: Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Image.asset("assets/image/rr.png",height: 150,),
//     SizedBox(height: 20,),
//     Text(  'SIGN UP',style: TextStyle(fontSize: 40,fontWeight:FontWeight.bold ) ),
//     Text(  'Welcome! Here you can sign up :-)',style: TextStyle(fontSize: 18, )),
//     SizedBox(height: 50,), Padding(
//     padding: const EdgeInsets.symmetric(horizontal: 25),
//     child: Container( decoration: BoxDecoration(
//     color: Colors.white,
//     borderRadius: BorderRadius.circular(12), ),
//     child: Padding(
//     padding: const EdgeInsets.symmetric(horizontal: 20),
//     child: TextField( controller: _emailController,
//     decoration: InputDecoration(  border: InputBorder.none,  hintText: 'Email', ), ), ),  ), ),
//     SizedBox(height: 10,),
//     // password
//     Padding(
//     padding: const EdgeInsets.symmetric(horizontal: 25),
//     child: Container(decoration: BoxDecoration(
//     color: Colors.white,
//     borderRadius: BorderRadius.circular(12),),
//     child: Padding(
//     padding: const EdgeInsets.symmetric(horizontal: 20),
//     child: TextField(
//     controller: _PasswordController ,
//     obscureText: true,
//     decoration: InputDecoration(
//     border: InputBorder.none,
//     hintText: 'Password', ),),  ),), ),
//     SizedBox(height: 10,),
//         Padding (
//
//           padding: const EdgeInsets.symmetric(horizontal:
//
//           25),
//
//           child: Container(
//
//               decoration: BoxDecoration(
//
//                   color: Colors.white,
//
//                   borderRadius: BorderRadius.circular(12)),
//
//               child: Padding(
//
//               padding: const EdgeInsets.symmetric
//
//               (horizontal: 20),
//
//           child: TextField(
//
//             controller: _confirmPasswordController,
//
//             obscureText: true,
//
//             decoration: InputDecoration(
//
//               border: InputBorder.none,
//
//               hintText: 'ConfirmPassword',
//
//             ),
//
//           ),
//         ),
//       ),
//       ),
//         SizedBox(height: 15),
//     Padding(
//     padding: const EdgeInsets.symmetric(horizontal: 25),
//     child:GestureDetector (
//       onTap: signUp,
//     child: Container(
//     padding: EdgeInsets.all(16),
//     decoration: BoxDecoration(
//     color: Color(0xffbc98a1),
//     borderRadius: BorderRadius.circular(12) ),
//     child: Center(child: Text('sign up',
//     style: TextStyle(fontWeight:FontWeight.bold,color:
//     Colors.white, fontSize: 18 ), )),), ),),
//     SizedBox(height: 25,),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//     children: [
//       Text('Already a member?',style: TextStyle( fontWeight: FontWeight.bold, )),
//     SizedBox(width: 8,),
//       Text('Sign in here',style: TextStyle(color: Colors.deepPurpleAccent, fontWeight: FontWeight.bold, ),)
//     ],
//
//         )
//       ],
//       ),
//       ),
//       ),
//       ),
//     );}}

















import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  @override

  State<signup> createState() => _signupState();

}
class _signupState extends State<signup> {
  final _emailController = TextEditingController();
  final _PasswordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  Future signUp() async {
    if (passwordConfirmed()) {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(

        email: _emailController.text.trim(),password: _PasswordController.text.trim(),);

      // Navigator.of(context).pushNamed('/');
      Navigator.pushNamed(context, '/');
    }}

  bool passwordConfirmed() {
    if (_PasswordController.text.trim() == _confirmPasswordController.text.trim()) {
      return true;

    } else {
      return false;

    }} void opensignup() {

    Navigator.of (context).pushReplacementNamed('signin');

  } @override
  void dispose() {
    super.dispose();

    _emailController.dispose();

    _PasswordController.dispose();

    _confirmPasswordController.dispose();

  } @override

  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.grey[200],

      body:SafeArea(

        child: Center(

          child: SingleChildScrollView(

            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Image.asset("assets/image/nn.png",height: 150,),
                SizedBox(height: 20,),
                Text( 'Skin Vision',style: TextStyle(fontSize: 40,fontWeight:FontWeight.bold ) ),
                Text( 'Welcome! Here you can sign up :-)',style: TextStyle(fontSize: 18, )),
                SizedBox(height: 50,), Padding(

                  padding: const EdgeInsets.symmetric(horizontal: 25),

                  child: Container( decoration: BoxDecoration(

                    color: Colors.white,

                    borderRadius: BorderRadius.circular(12), ),

                    child: Padding(

                      padding: const EdgeInsets.symmetric(horizontal: 20),

                      child: TextField( controller: _emailController,

                        decoration: InputDecoration( border: InputBorder.none, hintText: 'Email', ), ), ), ), ),
                SizedBox(height: 10,),

// passworod
                Padding(

                  padding: const EdgeInsets.symmetric(horizontal: 25),

                  child: Container(decoration: BoxDecoration(

                    color: Colors.white,

                    borderRadius: BorderRadius.circular(12),),

                    child: Padding(

                      padding: const EdgeInsets.symmetric(horizontal: 20),

                      child: TextField(

                        controller: _PasswordController ,

                        obscureText: true,

                        decoration: InputDecoration(

                          border: InputBorder.none,

                          hintText: 'Password', ),), ),), ),
                SizedBox(height: 10,),
                Padding (

                  padding: const EdgeInsets.symmetric(horizontal:

                  25),

                  child: Container(

                    decoration: BoxDecoration(

                        color: Colors.white,

                        borderRadius: BorderRadius.circular(12)),

                    child: Padding(

                      padding: const EdgeInsets.symmetric

                        (horizontal: 20),

                      child: TextField(

                        controller: _confirmPasswordController,

                        obscureText: true,

                        decoration: InputDecoration(

                          border: InputBorder.none,

                          hintText: 'ConfirmPassword',

                        ),

                      ),

                    ),

                  ),

                ),
                SizedBox(height: 15),
                Padding(

                  padding: const EdgeInsets.symmetric(horizontal: 25),

                  child:GestureDetector (

                    onTap: signUp,

                    child: Container(

                      padding: EdgeInsets.all(16),

                      decoration: BoxDecoration(

                          color: Color(0xffbc98a1),

                          borderRadius: BorderRadius.circular(12) ),

                      child: Center(child: Text('sign up',

                        style: TextStyle(fontWeight:FontWeight.bold,color: Colors.white, fontSize: 18 ), )),), ),),
                SizedBox(height: 25,), Row( mainAxisAlignment: MainAxisAlignment.center,

                  children: [ Text('Already a member?',style: TextStyle( fontWeight: FontWeight.bold, )),
                    SizedBox(width: 8,),

                    GestureDetector(
                      onTap: opensignup,
                      child: Text(
                        'Sign in here',
                        style: TextStyle(color: Colors.deepPurpleAccent, fontWeight: FontWeight.bold, ),),
                    )

                  ],

                )

              ],

            ),

          ),

        ),

      ),

    );}}