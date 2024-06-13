// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// class signin extends StatefulWidget {
//   @override
//   State<signin> createState() => _State();
// }
//
// class _State extends State<signin> {
//   final _emailController = TextEditingController();
//   final _PasswordController = TextEditingController();
//   // Future signIn( )async{
//   //   await FirebaseAuth.instance.signInWithEmailAndPassword
//   //     (email: _emailController.text.trim(), password:_PasswordController.text.trim() );
//   //
//   // }
//   Future<void> signIn() async {
//     try {
//       final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
//         email: _emailController.text.toString().trim(),
//         password: _PasswordController.text.toString().trim(),
//       );
//       // يمكنك إضافة رمز لنجاح تسجيل الدخول هنا، مثل توجيه المستخدم إلى صفحة معينة
//       print('تم تسجيل الدخول بنجاح!');
//     } on FirebaseAuthException catch (e) {
//       if (e.code == 'user-not-found' || e.code == 'wrong-password') {
//         // رسالة تنبيه في حالة عدم وجود المستخدم أو كلمة المرور غير صحيحة
//         print('يرجي عمل حساب جديد لكي تستطيع الدخول.');
//       } else {
//         // رسالة تنبيه عامة لأي خطأ آخر يحدث
//         print('حدث خطأ أثناء تسجيل الدخول: $e');
//       }
//     } catch (e) {
//       print(e);
//     }
//   @override
//   void dispose() {
//     super.dispose();
//     _emailController.dispose();
//     _PasswordController.dispose();
//   }}
//   @override
//
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[200],
//       body:SafeArea(
//         child: Center(
//           child: SingleChildScrollView(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Image.asset("assets/image/rr.png",height: 150,),
//                 SizedBox(height: 20,),
//                 Text(  'SIGN IN',style: TextStyle(fontSize: 40,fontWeight:FontWeight.bold )
//                 ),
//                 Text(  'Welcom back! Nice to see you again',style: TextStyle(fontSize: 18, )
//                 ),
//                 SizedBox(height: 50,),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 25),
//                   child: Container(
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 20),
//                       child: TextField(
//                         controller: _emailController,
//                         decoration: InputDecoration(
//                           border: InputBorder.none,
//                           hintText: 'Email',
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 10,),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 25),
//                   child: Container(
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 20),
//                       child: TextField(
//                         controller: _PasswordController ,
//                         obscureText: true,
//                         decoration: InputDecoration(
//                           border: InputBorder.none,
//                           hintText: 'Password',
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 15,),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 25),
//                   child:GestureDetector (
//                     onTap: signIn,
//                     child: Container(
//                       padding: EdgeInsets.all(16),
//                       decoration: BoxDecoration(
//                           color: Color(0xffbc98a1),
//                           borderRadius: BorderRadius.circular(12)
//                       ),
//                       child: Center(child: Text('sign in',
//                         style: TextStyle(fontWeight:FontWeight.bold,color: Colors.white, fontSize: 18 ),
//
//
//                       )),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 25,),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text('Not yet a member ?',style: TextStyle( fontWeight: FontWeight.bold, )),
//                     SizedBox(width: 8,),
//                     Text('Sign up Now',style: TextStyle(color: Colors.deepPurpleAccent, fontWeight: FontWeight.bold, ),)
//                   ],
//                 )
//
//
//               ],
//
//
//
//
//             ),
//           ),
//         ),
//       ),
//
//     );
//   }
// }
// import 'dart:async';
//
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:untitled2/twopage.dart';
//
// class signin extends StatefulWidget {
//   @override
//   State<signin> createState() => _signinState();
// }
//
// class _signinState extends State<signin> {
//   final _emailController = TextEditingController();
//   final _passwordController = TextEditingController();
//
//   Future<void> signIn() async {
//     await FirebaseAuth.instance.signInWithEmailAndPassword(
//       email: _emailController.text.toString().trim(),
//       password: _passwordController.text.toString().trim(),
//     );
//     // try {
//     //   final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
//     //     email: _emailController.text.toString().trim(),
//     //     password: _passwordController.text.toString().trim(),
//     //
//     //   );
//     //   // يمكنك إضافة رمز لنجاح تسجيل الدخول هنا، مثل توجيه المستخدم إلى صفحة معينة
//     //   print('تم تسجيل الدخول بنجاح!');
//     // } on FirebaseAuthException catch (e) {
//     //   if (e.code == 'user-not-found' || e.code == 'wrong-password') {
//     //     // رسالة تنبيه في حالة عدم وجود المستخدم أو كلمة المرور غير صحيحة
//     //     print('يرجي عمل حساب جديد لكي تستطيع الدخول.');
//     //   } else {
//     //     // رسالة تنبيه عامة لأي خطأ آخر يحدث
//     //     print('حدث خطأ أثناء تسجيل الدخول: $e');
//     //   }
//     //
//     // } catch (e) {
//     //   print(e);
//     // }
//     //
//     // Future<void> signIn() async {
//     //   try {
//     //     final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
//     //       email: _emailController.text.toString().trim(),
//     //       password: _passwordController.text.toString().trim(),
//     //     );
//     //   } on FirebaseAuthException catch (e) {
//     //     if (e.code == 'weak-password') {
//     //       print('The password provided is too weak.');
//     //     } else if (e.code == 'email-already-in-use') {
//     //
//     //       print('The account already exists for that email.');
//     //
//     //     }
//     //   } catch (e) {
//     //     print(e);
//     //   }
//     // try {
//     //   await FirebaseAuth.instance.signInWithEmailAndPassword(
//     //     email: _emailController.text.toString().trim(),
//     //     password: _passwordController.text.toString().trim(),
//     //   );
//     // } catch (e) {
//     //   print("Error signin in: $e");
//     // }
//   }
//   void  opensignup(){
//     Navigator.of(context).pushReplacementNamed('signup');
//
//
//   }
//   @override
//   void dispose() {
//     super.dispose();
//     _emailController.dispose();
//     _passwordController.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[200],
//       body: SafeArea(
//         child: Center(
//           child: SingleChildScrollView(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Image.asset(
//                   "assets/image/nn.png",
//                   height: 150,
//                 ),
//                 SizedBox(height: 20),
//                 Text(
//                   'Skin Vision',
//                   style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
//                 ),
//                 Text(
//                   'Welcome back! Nice to see you again',
//                   style: TextStyle(fontSize: 18),
//                 ),
//                 SizedBox(height: 50),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 25),
//                   child: Container(
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 20),
//                       child: TextField(
//                         controller: _emailController,
//                         decoration: InputDecoration(
//                           border: InputBorder.none,
//                           hintText: 'Email',
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 10),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 25),
//                   child: Container(
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 20),
//                       child: TextField(
//                         controller: _passwordController,
//                         obscureText: true,
//                         decoration: InputDecoration(
//                           border: InputBorder.none,
//                           hintText: 'Password',
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 15),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 25),
//                   child: GestureDetector(
//                     onTap: signIn,
//                     child: Container(
//                       padding: EdgeInsets.all(16),
//                       decoration: BoxDecoration(
//                         color: Color(0xffbc98a1),
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                       child: Center(
//                         child: Text(
//                           'sign in',
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             color: Colors.white,
//                             fontSize: 18,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//
//                 SizedBox(height: 25),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       'Not yet a member ?',
//                       style: TextStyle(fontWeight: FontWeight.bold),
//                     ),
//                     SizedBox(width: 8),
//                     GestureDetector(
//                       onTap: opensignup,
//                       child: Text(
//                         'Sign up Now',
//                         style: TextStyle(
//                           color: Colors.deepPurpleAccent,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     )
//                   ],
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//////////////////////////////////////////////////////////////////////////
















import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:untitled2/twopage.dart';
class signin extends StatefulWidget {
  @override
  State<signin> createState() => _signinState();
}
class _signinState extends State<signin> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  Future<void> signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: _emailController.text.toString().trim(),
      password: _passwordController.text.toString().trim(),
    );

  }
  void opensignup(){
    Navigator.of(context).pushReplacementNamed('signup');

  }
  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/image/nn.png",
                  height: 150,
                ),
                SizedBox(height: 20),
                Text(
                  'Skin Vision',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Welcome back! Nice to see you again',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Email',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Password',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: GestureDetector(
                    onTap: signIn,
                    child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Color(0xffbc98a1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          'sign in',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Not yet a member ?',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 8),
                    GestureDetector(
                      onTap: opensignup,
                      child: Text(
                        'Sign up Now',
                        style: TextStyle(
                          color: Colors.deepPurpleAccent,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}