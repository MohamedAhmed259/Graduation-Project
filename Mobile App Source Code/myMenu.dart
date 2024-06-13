import 'package:flutter/material.dart';
import 'detials.dart';
import 'welcom.dart';
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Skin vision") ,backgroundColor:Color(0xff787276) ,),
        // body: Center(
        //child: Text('hello users',style: TextStyle(fontSize: 40),),
        // ),
        body: Container(

          child:SingleChildScrollView(
            child: Column(
              //lis

                children: [ Image.asset("assets/image/img_4.png"),

                  Card(
                    child: ListTile(
                      title: Text(' Common types of skin diseases ' ,

                        style: TextStyle(color:Color(0xff48494b)  ,fontSize: 15,fontWeight: FontWeight.bold),),
                      trailing: Icon(Icons.arrow_circle_right_outlined,size: 50,),
                      subtitle: Text('go to more'),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Mydood()));
                      },
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Container(
                      height: 277,
                      width: 327,
                      decoration: BoxDecoration(
                        boxShadow: [
                          new BoxShadow(
                              color: Color(0xffbc98a1).withOpacity(0.4),
                              offset: new Offset(-10.0, 0.0),
                              blurRadius: 20.0,spreadRadius: 4.0
                          ),
                        ],
                        borderRadius: BorderRadius.all(
                          Radius.circular(60.0),
                        ),
                        color: Color(0xffbc98a1),
                      ),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment(0, -0.5),
                            child: Container( decoration: BoxDecoration(
                              boxShadow: [
                                new BoxShadow(
                                    color: Color(0xffbc98a1).withOpacity(0.4),
                                    offset: new Offset(-10.0, 0.0),
                                    blurRadius: 20.0,spreadRadius: 4.0
                                ),
                              ],
                              borderRadius: BorderRadius.all(
                                Radius.circular(30.0),
                              ),
                              color:  Colors.white,
                            ),child: Image.asset("assets/image/img_3.png", height: 100, width: 200,) ),
                          ),
                          SizedBox(height: 30,),
                          Text(' Use a Skin Vision application :',style: TextStyle(color: Color(0xff48494b),fontSize: 17,fontWeight:FontWeight.w700 ),),
                          Text('- clicking on the camera icon and taking  ',style: TextStyle(color: Color(0xff48494b),fontSize: 15.5,fontWeight:FontWeight.w700 ),),
                          Text(' a picture of the affected area. ',style: TextStyle(color: Color(0xff48494b),fontSize: 15.5,fontWeight:FontWeight.w700 ),),
                          Text('- uploading a picture (via the gallery). ',style: TextStyle(color: Color(0xff48494b),fontSize: 15.5,fontWeight:FontWeight.w700 ),),
                        ],
                      ),


                    ),
                  ),
////////////////////

                   Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20,top: 30),
                    child: Container(
                       //padding:EdgeInsets.only(bottom: 10,left: 20,right: 20,top: 20),
                      height: 277,
                      width: 327,
                      decoration: BoxDecoration(
                        boxShadow: [
                          new BoxShadow(
                              color: Color(0xffbc98a1).withOpacity(0.4),
                              offset: new Offset(-10.0, 0.0),
                              blurRadius: 20.0,spreadRadius: 4.0
                          ),
                        ],
                        borderRadius: BorderRadius.all(
                          Radius.circular(60.0),
                        ),
                        color: Color(0xffbc98a1),
                      ),
                      child: Column(
                          children: [
                          Align(
                          alignment: Alignment(0, -0.5),
                      child: Container( decoration: BoxDecoration(
                        boxShadow: [
                          new BoxShadow(
                              color: Color(0xffbc98a1).withOpacity(0.4),
                              offset: new Offset(-10.0, 0.0),
                              blurRadius: 20.0,spreadRadius: 4.0
                          ),
                        ],
                        borderRadius: BorderRadius.all(
                          Radius.circular(16.0),
                        ),
                        color:  Colors.white,
                      ), child: Image.asset("assets/image/kk.png", height: 100, width: 180),
                          ),
                          ),
                          SizedBox(height: 5,),
                          Text('   - You should photograph the affected   ',style: TextStyle(color: Color(0xff48494b),fontSize: 15.5,fontWeight:FontWeight.w700),),
                         // Text('          ',style: TextStyle(color: Color(0xff48494b),fontSize: 16,fontWeight:FontWeight.w700),),
                          Text('    skin from a direct, clear angle. ',style: TextStyle(color: Color(0xff48494b),fontSize: 15.5,fontWeight:FontWeight.w700),),
                          Text('- Use good lighting. ',style: TextStyle(color: Color(0xff48494b),fontSize: 15.5,fontWeight:FontWeight.w700),),
                          Text('  - Try to focus well on the affected  ',style: TextStyle(color: Color(0xff48494b),fontSize: 15.5,fontWeight:FontWeight.w700),),
                          Text('            area.',style: TextStyle(color: Color(0xff48494b),fontSize: 15.5,fontWeight:FontWeight.w700),),
                          Text('-  Try to take the photo from a ',style: TextStyle(color: Color(0xff48494b),fontSize: 15.5,fontWeight:FontWeight.w700),),
                          Text('            reasonable distance.',style: TextStyle(color: Color(0xff48494b),fontSize: 15.5,fontWeight:FontWeight.w700),),

                        ],
                      ),

                    ),
                  ),

                   Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20,top: 30),
                    child: Container(
                       // padding:EdgeInsets.only(bottom: 10,left: 20,right: 20,top: 20),
                      height: 277,
                      width: 327,
                      decoration: BoxDecoration(
                        boxShadow: [
                          new BoxShadow(
                              color: Color(0xffbc98a1).withOpacity(0.4),
                              offset: new Offset(-10.0, 0.0),
                              blurRadius: 20.0,spreadRadius: 4.0
                          ),
                        ],
                        borderRadius: BorderRadius.all(
                          Radius.circular(60.0),
                        ),
                        color: Color(0xffbc98a1),
                      ),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment(0, -0.5),
                            // child: Image.asset("assets/image/m113.jpg", height: 150, width: 150),
                          ),
                          SizedBox(height: 20,),
                          Text('      ',style: TextStyle(color: Color(0xff48494b),fontSize: 16,fontWeight:FontWeight.w700),),
                          Text('  The skin vision application    ',style: TextStyle(color: Color(0xff48494b),fontSize: 17,fontWeight:FontWeight.w700),),
                          Text('    typically offers : ',style: TextStyle(color: Color(0xff48494b),fontSize: 17,fontWeight:FontWeight.w700),),
                          Text(' - Explanation of common skin ',style: TextStyle(color: Color(0xff48494b),fontSize: 15.5,fontWeight:FontWeight.w700),),
                          Text('conditions.',style: TextStyle(color: Color(0xff48494b),fontSize: 15.5,fontWeight:FontWeight.w700),),
                          Text('     - Tips and directions for skin care.',style: TextStyle(color: Color(0xff48494b),fontSize: 15.5,fontWeight:FontWeight.w700),),
                          Text('     - The possibility of sharing pictures ',style: TextStyle(color: Color(0xff48494b),fontSize: 15.5,fontWeight:FontWeight.w700),),
                          Text('   of the case to obtain an initial  ',style: TextStyle(color: Color(0xff48494b),fontSize: 15.5,fontWeight:FontWeight.w700),),
                          Text('   consultation.  ',style: TextStyle(color: Color(0xff48494b),fontSize: 15.5,fontWeight:FontWeight.w700),),

                        ],
                      ),

                    ),
                  )
                  // 3




                    ]


            ),  //
          ),

        )


    );
  }
}