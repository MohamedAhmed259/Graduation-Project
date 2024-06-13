import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/pages/sign%20in.dart';
import '../twopage.dart';
import 'sign up.dart';
class   Auth extends StatefulWidget {
  @override
  State<Auth> createState() => _State();
}

class _State extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder<User?>(

          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator(); // يمكنك استبدالها بمؤشر تحميل آخر حسب تصميم التطبيق الخاص بك
            } else if (snapshot.hasData && snapshot.data != null) {
              return Twopage(); // تسجيل الدخول بالفعل
            } else {
              return signin(); // يرشد المستخدم إلى صفحة تسجيل الدخول
            }
          },

        )
    );
  }}

























    // return Scaffold(
    //   body: StreamBuilder<User?>(
    //     stream: FirebaseAuth.instance.authStateChanges(),
    //     builder: ((context, snapshot){
    //       if (snapshot.hasData){
    //         return Twopage();
    //       } else{
    //         return signup();
    //       }
    //
    //     }) ,
    //   ),
    // );

