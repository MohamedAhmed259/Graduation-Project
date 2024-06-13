import 'package:flutter/material.dart';
class Mydood extends StatefulWidget {
  const Mydood({super.key});
  @override
  State<Mydood> createState() => _MydoodState();
}
class _MydoodState extends State<Mydood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("information about App and Skin"),
        backgroundColor:Color(0xff9388a6),
      ),
      backgroundColor:Colors.white,
      body:

      Column(
        children: [


          SizedBox(height:30,),
          Expanded(
            child: Container(
              height: 330,
              child: Stack(
                children: [

                  Positioned(
                      top: 35,
                      left: 20,
                      child: Material(

                        child: Container(
                          height:200,
                          width: 370,

                          decoration: BoxDecoration(
                            // border: Border.all(width: 4),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30.0),
                              boxShadow: [
                                new BoxShadow(
                                    color: Colors.deepPurpleAccent.withOpacity(0.6),
                                    offset: new Offset(-10,10),
                                    blurRadius: 20,
                                    spreadRadius: 4.0) ,
                              ]


                          ),
                        ),

                      )
                  ),


                  Positioned(
                      top:0,
                      left:10,
                      child: Card(
                        elevation: 18.8,
                        shadowColor: Colors.deepPurpleAccent.withOpacity(0.6),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.8),
                        ),
                        child: Container(
                          height: 200,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),

                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage("assets/image/mm.png"),
                              )
                          ),
                        ),
                      )
                  ),
                  Positioned(
                      top:45,
                      left:170,
                      child:
                      Container(
                        height: 150,
                        width: 220,
                        child: Column(

                          children: [
                            Text(" Common types of skin diseases",style: TextStyle(fontSize: 20,
                                color: Colors.deepPurpleAccent,
                                fontWeight: FontWeight.bold),),
                            Card(
                              child: Text(" (1)(BCC). ",
                                style: TextStyle(fontSize: 14,
                                    color: Color(0xff363f93),
                                    fontWeight: FontWeight.w500),),
                            ),

                            Card(
                              child: Text("(2)Psoriasis. "
                                ,
                                style: TextStyle(fontSize: 14,
                                    color: Color(0xff363f93),
                                    fontWeight: FontWeight.w500),),
                            ),
                            Card(
                              child: Text("(3)Eczema."
                                ,
                                style: TextStyle(fontSize: 13,
                                    color: Color(0xff363f93),
                                    fontWeight: FontWeight.w500),),
                            ),

                          ],
                        ),
                      )
                  ),

                ],
              ),
            ),

          ),
          //

          Expanded(  child: MediaQuery.removePadding(context: context, removeTop: true
              , child: ListView(

                children: [
                  Card(
                    child: Text(" The necessary to protect the skin ",style: TextStyle(fontSize: 19,
                        color: Colors.deepPurpleAccent,
                        fontWeight: FontWeight.bold),),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.8),
                    ),  ),
                  Container(
                    margin:EdgeInsets.only(bottom: 10,top: 50),
                    height: 200,

                    padding:
                    EdgeInsets.only(left: 20,right: 20,bottom: 20),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xff9388a6),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(80.0),
                        ),
                        boxShadow: [
                          new BoxShadow(
                              color: Color(0xFf363f93).withOpacity(0.3),
                              offset: new Offset(-10.0, 0.0),
                              blurRadius: 20.0,spreadRadius: 4.0
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.only(
                        left: 32,
                        top:  50,
                        bottom: 50,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Moisturizing",style: TextStyle(
                              color: Colors.white,
                              fontSize: 16
                          ),),
                          const SizedBox(
                            height: 2,
                          ),
                          Text("Keep skin moisturized, lubricated and hydrated at all times.his means using an excellent moisturizer at least three times a day. "
                              "Moisturize your body immediately after showering",style: TextStyle(
                              color: Colors.white,
                              fontSize: 10
                          ),),

                        ],
                      ),
                    ),
                  ),            //how to use
                  Container(
                    margin:EdgeInsets.only(bottom: 10,top: 50),
                    height: 200,

                    padding:
                    EdgeInsets.only(left: 20,right: 20,bottom: 20),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xff9388a6),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(80.0),
                        ),
                        boxShadow: [
                          new BoxShadow(
                              color: Color(0xFf363f93).withOpacity(0.3),
                              offset: new Offset(-10.0, 0.0),
                              blurRadius: 20.0,spreadRadius: 4.0
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.only(
                        left: 32,
                        top:  50,
                        bottom: 50,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Clothing",style: TextStyle(
                              color: Colors.white,
                              fontSize: 16
                          ),),
                          const SizedBox(
                            height: 2,
                          ),
                          Text("Stick to cotton, linen and absorbent materials in the summer."
                              " Avoid buying clothes with rough materials because they may rub against your skin and cause irritation.",style: TextStyle(
                              color: Colors.white,
                              fontSize: 11
                          ),),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin:EdgeInsets.only(bottom: 10,top: 50),
                    height: 200,

                    padding:
                    EdgeInsets.only(left: 20,right: 20,bottom: 20),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xff9388a6),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(80.0),
                        ),
                        boxShadow: [
                          new BoxShadow(
                              color: Color(0xFf363f93).withOpacity(0.3),
                              offset: new Offset(-10.0, 0.0),
                              blurRadius: 20.0,spreadRadius: 4.0
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.only(
                        left: 32,
                        top:  50,
                        bottom: 50,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[

                          const SizedBox(
                            height: 2,
                          ),
                          Text("Bathing",style: TextStyle(
                              color: Colors.white,
                              fontSize: 16
                          ),),
                          Text("Do not shower more than once a day. Make sure that your skin's contact with water is as short as possible. Take a cold,"
                              " lukewarm or warm shower and never use hot water.",style: TextStyle(
                              color: Colors.white,
                              fontSize: 11
                          ),),

                        ],
                      ),
                    ),
                  ),
                ],

              )),),
        ],

      ),);
  }
}
