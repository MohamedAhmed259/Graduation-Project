import 'package:flutter/material.dart';
import 'package:untitled2/pages/camera.dart';
import 'package:untitled2/pages/firstpage.dart';
import 'package:untitled2/pages/myMenu.dart';
import 'package:untitled2/pages/welcom.dart';
class Twopage extends StatefulWidget {
  const Twopage({super.key});

  @override
  State<Twopage> createState() => _TwopageState();
}
int currentTab=0;
class _TwopageState extends State<Twopage> {
  final List<Widget> screans=[
    MyApp(),
    FirstApp(),
    HomePage()

  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen=MyApp();
  @override
  Widget build(BuildContext context) {
   // final screenWidth = MediaQuery.of(context).size.width;
    
    return Scaffold(
      body: PageStorage(

        child:currentScreen,
        bucket: bucket,

      ),
      floatingActionButton:  FloatingActionButton(

          backgroundColor: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.account_circle_rounded ,color: Color(0xff787276),),
          ],
        ) ,
          onPressed: (){

            setState(() {
              currentScreen= Welcome();
              currentTab=2;
            });
      }
      ),
     floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
 bottomNavigationBar: BottomAppBar(

   color: Colors.white,
   shape: CircularNotchedRectangle(),
   notchMargin: 10,


   child: Container(


     height: 60,
     child: SingleChildScrollView(
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: <Widget>[
           Row(crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               MaterialButton(    minWidth: 30,
                   onPressed: (){
                 setState(() {
                   currentScreen= MyApp();
                   currentTab=0;
                 });
                   },
                 child:Column(


                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [

                     Icon(
                       Icons.home,
                       color: currentTab==0? Color(0xff787276):Color(0xff787276),
                     ),
                     Text('home', style: TextStyle(color: currentTab==0? Color(0xff787276):Color(0xff787276)),)
                     ,SizedBox(width: 150,),

                   ],
                 )

               ),
               MaterialButton(   minWidth: 30,
                   onPressed: (){
                     setState(() {
                       currentScreen= HomePage();
                       currentTab=1;
                     });
                   },
                   child:Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Icon(
                         Icons.camera_alt,
                         color: currentTab==1? Color(0xff787276):Color(0xff787276),
                       ),
                       Text('Camera', style: TextStyle(color: currentTab==1? Color(0xff787276):Color(0xff787276)),)
                  ,SizedBox(width: 130,)
                     ],
                   )
               ),
             ],
           )
         ],
       ),
     ),
   ),
 ),

     //appBar: AppBar(title: Text("Skin  vision") ,backgroundColor:Color(0xff9388a6) ,),

    );
  }
}
