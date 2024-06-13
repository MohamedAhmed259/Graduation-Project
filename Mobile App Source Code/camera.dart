//
//
// import 'dart:io';
//
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:tflite/tflite.dart';
//
//
//
// class UploadingPhotoToModelScreen extends StatefulWidget {
//   const UploadingPhotoToModelScreen({Key? key}) : super(key: key);
//
//   @override
//   State<UploadingPhotoToModelScreen> createState() =>
//       _UploadingPhotoToModelScreenState();
// }
//
// class _UploadingPhotoToModelScreenState
//     extends State<UploadingPhotoToModelScreen> {
//   List? outputs;
//
//   File? _imageFile;
//
//   bool? loading = false;
//
//  // late List<Face>? _faces = []; // Faces Detected ;
//
//
//   @override
//   void initState() {
//     super.initState();
//     loading = true;
//
//     loadModel().then((value) {
//       setState(() {
//         loading = false;
//       });
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//           appBar: AppBar(
//             backgroundColor: Colors.cyan,
//             leading: IconButton(
//               icon: Icon(
//                 Icons.arrow_back_ios,
//               ),
//               color: Colors.cyanAccent,
//               onPressed: () {
//
//               },
//             ),
//             centerTitle: true,
//             title: Text(
//               'AI photo analysis',
//               style: Theme.of(context).textTheme.headlineSmall,
//             ),
//           ),
//           body: loading!
//               ? Center(
//               child: Container(
//                 child: CircularProgressIndicator(),
//               ))
//               : Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(10.0),
//                 child: Image.asset('assets/images/placeHolder.png'),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Text(
//                       'Upload Your Face Skin\n\r\r\r\r\rClearly Image',
//                       style:
//                       Theme.of(context).textTheme.bodyLarge!.copyWith(
//                         color: Colors.black,
//                         fontSize: 27,
//                         fontStyle: FontStyle.normal,
//                         fontWeight: FontWeight.bold,
//                         wordSpacing: 0,
//                         letterSpacing: 0,
//                       ),
//                     ),
//                     SizedBox(
//                       height: 20.0,
//                     ),
//                     Text(
//                       'For Best Experience and Best Result,',
//                       style: Theme.of(context)
//                           .textTheme
//                           .labelSmall!
//                           .copyWith(
//                         color: Colors.grey[700],
//                         fontSize: 15,
//                         fontStyle: FontStyle.italic,
//                         wordSpacing: 0,
//                         letterSpacing: 0,
//                       ),
//                     ),
//                     Text(
//                       'Please make sure that your face ',
//                       style: Theme.of(context)
//                           .textTheme
//                           .labelSmall!
//                           .copyWith(
//                         color: Colors.grey[700],
//                         fontSize: 15,
//                         fontStyle: FontStyle.italic,
//                         wordSpacing: 0,
//                         letterSpacing: 0,
//                       ),
//                     ),
//                     Text(
//                       'skin photo you upload is clear ,',
//                       style: Theme.of(context)
//                           .textTheme
//                           .labelSmall!
//                           .copyWith(
//                         color: Colors.grey[700],
//                         fontSize: 15,
//                         fontStyle: FontStyle.italic,
//                         wordSpacing: 0,
//                         letterSpacing: 0,
//                       ),
//                     ),
//                     Text(
//                       ', in a light place, straight',
//                       style: Theme.of(context)
//                           .textTheme
//                           .labelSmall!
//                           .copyWith(
//                         color: Colors.grey[700],
//                         fontSize: 15,
//                         fontStyle: FontStyle.italic,
//                         wordSpacing: 0,
//                         letterSpacing: 0,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               GestureDetector(
//                 onTap: () {
//
//                   getUserFaceImage().then((value) {
//                     Future.delayed(
//                       Duration(seconds: 1),
//                     ).then((value) {
//
//                       print('done') ;
//
//                         showDialog(
//                           context: context,
//                           builder: (context) => AlertDialog(
//                             alignment: Alignment.center,
//                             backgroundColor: Colors.white,
//                             title: const Center(
//                               child: Text(
//                                 'Result :',
//                                 style: TextStyle(
//                                     fontSize: 23,
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.cyanAccent),
//                               ),
//                             ),
//                             content: Column(
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               mainAxisSize: MainAxisSize.min,
//                               children: [
//                                 Padding(
//                                   padding: EdgeInsets.only(top: 5.0),
//                                   child:
//
//                                   _imageFile == null
//                                       ? Container()
//                                       : Image.file(
//                                     _imageFile!,
//                                   ),
//                                 ),
//                                 const SizedBox(
//                                   height: 20.0,
//                                 ),
//                                 RichText(
//                                   text: TextSpan(
//                                     children: [
//                                       TextSpan(
//                                         text:
//                                         ' According to our analysis , your skin is suffering from the  ',
//                                         style: TextStyle(
//                                             fontWeight: FontWeight.w700,
//                                             fontSize: 15,
//                                             color: Colors.black),
//                                       ),
//                                       TextSpan(
//                                         text: outputs != null
//                                             ? '\' ${outputs![0]['label'].toString().substring(2)} \'\n'
//                                             : '',
//                                         style: TextStyle(
//                                           fontWeight: FontWeight.bold,
//                                           fontSize: 19,
//                                           color: Colors.blue[500],
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                                 Text(
//                                   'For more details about your disease \nand some other diseases , please ',
//                                   style: TextStyle(
//                                     fontWeight: FontWeight.w700,
//                                     fontSize: 13,
//                                     color: Colors.black,
//                                   ),
//                                 ),
//                                 OutlinedButton(
//
//                                   onPressed: () {
//                                    ;
//                                   },
//                                   child: Text(
//                                     'Go  there',
//                                     style: TextStyle(
//                                         color: Colors.deepPurple,
//                                         fontWeight: FontWeight.bold,
//                                         letterSpacing: 1
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             shadowColor: Colors.blue[100],
//                             actions: [
//                               Padding(
//                                 padding: const EdgeInsets.only(
//                                     right: 35, bottom: 7.0),
//                                 child: myButton(
//                                     width: 100,
//                                     height: 30,
//                                     color: Colors.deepPurpleAccent,
//                                     textSize: 13,
//                                     textcolor: Colors.white,
//                                     text: 'Back Home',
//                                     onTap: () {
//                                      ;
//                                     }),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.only(bottom: 7.0),
//                                 child: myButton(
//                                     width: 150,
//                                     height: 30,
//                                     color: Colors.deepPurple,
//                                     textSize: 13,
//                                     textcolor: Colors.white,
//                                     text: 'Try another Image',
//                                     onTap: () {
//                                       Navigator.pop(context);
//                                     }),
//                               ),
//                             ],
//                           ),
//                         );
//
//
//                     });
//                   });
//
//
//                 },
//                 child: Padding(
//                   padding: const EdgeInsets.all(12.0),
//                   child: Center(
//                     child: Container(
//                       decoration: BoxDecoration(
//                         color: Colors.deepPurpleAccent,
//                         borderRadius: BorderRadius.circular(20.0),
//                       ),
//                       width: double.infinity,
//                       height: 55,
//                       child: Center(
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Text(
//                                 'Upload Image ',
//                                 style: const TextStyle(
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 18,
//                                 ),
//                               ),
//                               SizedBox(
//                                 width: 20.0,
//                               ),
//                               Icon(
//                                 FontAwesomeIcons.cloudArrowUp,
//                                 color: Colors.lightBlueAccent[100],
//                               )
//                             ],
//                           )),
//                     ),
//                   ),
//                 ),
//               ),
//               Text('OR',style: Theme.of(context).textTheme.labelSmall!.copyWith(color: defaultColor),) ,
//               GestureDetector(
//                 onTap: () {
//                   getUserFaceWithCameraImage().then((value) {
//                     Future.delayed(
//                       Duration(seconds: 1),
//                     ).then((value) {
//                       showDialog(
//                         context: context,
//                         builder: (context) => AlertDialog(
//                           alignment: Alignment.center,
//                           backgroundColor: Colors.white,
//                           title: const Center(
//                             child: Text(
//                               'Result :',
//                               style: TextStyle(
//                                   fontSize: 23,
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.brown),
//                             ),
//                           ),
//                           content: Column(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             mainAxisSize: MainAxisSize.min,
//                             children: [
//                               Padding(
//                                 padding: EdgeInsets.only(top: 5.0),
//                                 child: _imageFile == null
//                                     ? Container()
//                                     : Image.file(
//                                   _imageFile!,
//                                 ),
//                               ),
//                               const SizedBox(
//                                 height: 20.0,
//                               ),
//                               RichText(
//                                 text: TextSpan(
//                                   children: [
//                                     TextSpan(
//                                       text:
//                                       ' According to our analysis , your skin is suffering from the  ',
//                                       style: TextStyle(
//                                           fontWeight: FontWeight.w700,
//                                           fontSize: 15,
//                                           color: Colors.black),
//                                     ),
//                                     TextSpan(
//                                       text: outputs != null
//                                           ? '\' ${outputs![0]['label'].toString().substring(2)} \'\n'
//                                           : '',
//                                       style: TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 19,
//                                         color: Colors.blue[500],
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               Text(
//                                 'For more details about your disease \nand some other diseases , please ',
//                                 style: TextStyle(
//                                   fontWeight: FontWeight.w700,
//                                   fontSize: 13,
//                                   color: Colors.black,
//                                 ),
//                               ),
//                               OutlinedButton(
//
//                                 onPressed: () {
//                                   ;
//                                 },
//                                 child: Text(
//                                   'Go  there',
//                                   style: TextStyle(
//                                       color: Colors.cyanAccent,
//                                       fontWeight: FontWeight.bold,
//                                       letterSpacing: 1
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                           shadowColor: Colors.blue[100],
//                           actions: [
//                             Padding(
//                               padding: const EdgeInsets.only(
//                                   right: 35, bottom: 7.0),
//                               child: myButton(
//                                   width: 100,
//                                   height: 30,
//                                   color: Colors.deepPurpleAccent,
//                                   textSize: 13,
//                                   textcolor: Colors.white,
//                                   text: 'Back Home',
//                                   onTap: () {
//                                    ;
//                                   }),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.only(bottom: 7.0),
//                               child: myButton(
//                                   width: 150,
//                                   height: 30,
//                                   color: Colors.deepPurpleAccent,
//                                   textSize: 13,
//                                   textcolor: Colors.white,
//                                   text: 'Try another Image',
//                                   onTap: () {
//                                     Navigator.pop(context);
//                                   }),
//                             ),
//                           ],
//                         ),
//                       );
//                     });
//                   });
//                 },
//                 child: Padding(
//                   padding: const EdgeInsets.all(12.0),
//                   child: Center(
//                     child: Container(
//                       decoration: BoxDecoration(
//                         color: Colors.deepPurpleAccent,
//                         borderRadius: BorderRadius.circular(20.0),
//                       ),
//                       width: double.infinity,
//                       height: 55,
//                       child: Center(
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Text(
//                                 'Take a Photo ',
//                                 style: const TextStyle(
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 18,
//                                 ),
//                               ),
//                               SizedBox(
//                                 width: 20.0,
//                               ),
//                               Icon(
//                                 Icons.linked_camera_sharp,
//                                 color: Colors.lightBlueAccent[100],
//                               )
//                             ],
//                           )),
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 40,
//               ),
//
//
//             ],
//           ),
//
//
//         );
//       },
//
//   }
//
//   // File? profileImage;
//   ImagePicker picker = ImagePicker();
//
//   Future<void> detectFacesInImageImage() async {
//
//   }
//
//   Future<void> getUserFaceImage() async {
//     var image = await picker
//         .pickImage(
//       source: ImageSource.gallery,
//     ).catchError((e) {
//       print('pick image method  error${e.toString()} ');
//       return null ;
//     });
//
//     if (image == null) return null;
//
//     final GoogleVisionImage visionImage =
//     GoogleVisionImage.fromFile(File(image.path));
//     final FaceDetector faceDetector = GoogleVision.instance.faceDetector(
//         const FaceDetectorOptions(
//             mode: FaceDetectorMode.fast,
//             enableLandmarks: true,
//             enableClassification: false,
//             enableContours: false,
//             enableTracking: false));
//
//     _faces = await faceDetector.processImage(visionImage);
//     print('////////////////////') ;
//     print(_faces!.length) ;
//     print(_faces!) ;
//     print('////////////////////') ;
//
//
//     print(image.path);
//     loading = true;
//
//     _imageFile = File(image.path);
//
//
//
//       showDialog(
//         context: context,
//         builder: (context) => AlertDialog(
//           alignment: Alignment.center,
//           backgroundColor: Colors.white,
//           title:  Center(
//             child: Text(
//               'Failed Note :',
//               style: TextStyle(
//                 fontSize: 23,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.red.shade700,
//               ),
//             ),
//           ),
//           content: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             mainAxisSize: MainAxisSize.min,
//             children: [
//
//               RichText(
//                 text: TextSpan(
//                   children: [
//                     TextSpan(
//                       text: ' Sorry , this image is not valid cause it has no faces , Try Again ',
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 17,
//                         color: Colors.black ,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//
//
//
//             ],
//           ),
//           shadowColor: Colors.blue[100],
//           actions: [
//             Padding(
//               padding: const EdgeInsets.only(
//                   right: 35, bottom: 7.0),
//               child: myButton(
//                   width: 100,
//                   height: 30,
//                   color: Colors.deepPurpleAccent,
//                   textSize: 13,
//                   textcolor: Colors.white,
//                   text: 'Back Home',
//                   onTap: () {
//                     ;
//                   }),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(bottom: 7.0),
//               child: myButton(
//                   width: 150,
//                   height: 30,
//                   color: Colors.deepPurpleAccent,
//                   textSize: 13,
//                   textcolor: Colors.white,
//                   text: 'Try another Image',
//                   onTap: () {
//                     Navigator.pop(context);
//                   }),
//             ),
//           ],
//         ),
//       );
//
//
//       print(_faces!.length);
//       showDialog(
//         context: context,
//         builder: (context) => AlertDialog(
//           alignment: Alignment.center,
//           backgroundColor: Colors.white,
//           title:  Center(
//             child: Text(
//               'Failed Note :',
//               style: TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.red.shade700,
//               ),
//             ),
//           ),
//           content: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             mainAxisSize: MainAxisSize.min,
//             children: [
//
//               RichText(
//                 text: TextSpan(
//                   children: [
//                     TextSpan(
//                       text: ' Sorry , this image is not valid cause it has ${_faces!.length} Faces  , We just Need one , Try Again ',
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 17,
//                         color: Colors.black ,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//
//
//             ],
//           ),
//           shadowColor: Colors.blue[100],
//           actions: [
//             Padding(
//               padding: const EdgeInsets.only(
//                   right: 35, bottom: 7.0),
//               child: myButton(
//                   width: 100,
//                   height: 30,
//                   color: Colors.deepPurpleAccent,
//                   textSize: 13,
//                   textcolor: Colors.white,
//                   text: 'Back Home',
//                   onTap: () {
//                    ;
//                   }),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(bottom: 7.0),
//               child: myButton(
//                   width: 150,
//                   height: 30,
//                   color: Colors.deepPurpleAccent,
//                   textSize: 13,
//                   textcolor: Colors.white,
//                   text: 'Try another Image',
//                   onTap: () {
//                     Navigator.pop(context);
//                   }),
//             ),
//           ],
//         ),
//       );
//
//     else if(_faces!.length==1){
//       setState(() {
//         classifyImage(File(image.path));
//       });
//     }
//
//
//   }
//
//   Future<void> getUserFaceWithCameraImage() async {
//     var image = await picker
//         .pickImage(
//       source: ImageSource.camera,
//     )
//         .catchError((e) {
//       print('pick image method  error${e.toString()} ');
//       return null ;
//     });
//     if (image == null) return null;
//     setState(() {
//       print(image.path);
//       loading = true;
//       _imageFile = File(image.path);
//       classifyImage(File(image.path));
//     });
//   }
//
//   classifyImage(File? image) async {
//     var output = await Tflite.runModelOnImage(
//       path: image!.path,
//       numResults: 2,
//       threshold: 0.2,
//       imageMean: 0.0,
//       imageStd: 255.0,
//       asynch: true,
//     );
//     setState(() {
//       loading = false;
//       outputs = output;
//     });
//   }
//
//   loadModel() async {
//     await Tflite.loadModel(
//       model: 'assets/Tflite_Model/model.tflite',
//       labels: 'assets/Tflite_Model/basma.txt',
//       numThreads: 1,
//       isAsset: true,
//       useGpuDelegate: false,
//     ).then((value) {
//       print('model Loadded ');
//     });
//   }
//
//   @override
//   void dispose() async {
//     super.dispose();
//     await Tflite.close();
//
//   }
// }
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//

//gggg

                                    //
                                    //   import 'dart:io';
                                    //   import 'package:flutter/material.dart';
                                    //   import 'package:image_picker/image_picker.dart';
                                    //   import 'package:tflite/tflite.dart';
                                    //   import 'package:path/path.dart' ;
                                    //   class HomePage extends StatefulWidget {
                                    //   @override
                                    //       _HomePageState createState() => _HomePageState();
                                    //   }
                                    //
                                    //     class _HomePageState extends State<HomePage> {
                                    //
                                    //     bool loading = true;
                                    //     File? _image=File('');
                                    //     List? _output;
                                    //     List Classifications=[];
                                    //     final imagepicker = ImagePicker();
                                    //     @override
                                    //     void initState() {
                                    //     super.initState();
                                    //     loadmodel().then((value) {
                                    //   setState(() {
                                    //   loading = false;
                                    //   //_output = _output;
                                    //   });
                                    //   });
                                    //   }
                                    //
                                    // Future imageClassification(File image)
                                    // async {
                                    // final List? output = await Tflite.runModelOnImage(
                                    // path: image!.path,
                                    // numResults: 9,
                                    // threshold: 0.5,
                                    // imageMean: 127.5,
                                    // imageStd: 127.5,
                                    // );
                                    // setState(() {
                                    //
                                    // loading = false;
                                    // });
                                    // }
                                    //   loadmodel() async {
                                    //     var _output= await Tflite.loadModel(
                                    //         model: 'assets/yolov8.tflite'  ,labels: 'assets/labeels.txt',isAsset: true,useGpuDelegate: false,numThreads:1 );
                                    //         setState(() {
                                    //         loading=false;
                                    //         _output=_output;
                                    //         });
                                    //         }
                                    //         @override
                                    //         void dispose() {
                                    //         super.dispose();
                                    //          Tflite.close();
                                    //         }
                                    //
                                    //   Future pickImage() async {
                                    //     final ImagePicker _picker = ImagePicker();
                                    //
                                    //     final XFile? pickedFile = await _picker.pickImage(
                                    //
                                    //       source: ImageSource.camera, //
                                    //
                                    //     );
                                    //     File image = File(pickedFile!.path);
                                    //     setState(() {
                                    //       loading=true;
                                    //     });
                                    //     Image.file(image);
                                    //     imageClassification(image);
                                    //   }
                                    //
                                    //
                                    //
                                    //
                                    //
                                    //
                                    //
                                    //
                                    // //pickimage_gallery()
                                    // Future pickImage1() async {
                                    // final ImagePicker _picker = ImagePicker();
                                    // final XFile? pickedFile = await _picker.pickImage(
                                    // source: ImageSource.gallery,
                                    // );
                                    // if (pickedFile != null) {
                                    // print(pickedFile.path); // تحقق من المسار المحدد هنا
                                    // File image = File(pickedFile.path);
                                    // setState(() {
                                    // loading=false;
                                    // Image.file(image);
                                    // });
                                    // imageClassification(image);
                                    // }
                                    // }
                                    // @override
                                    // Widget build(BuildContext context) {
                                    // var h = MediaQuery.of(context).size.height;
                                    // var w = MediaQuery.of(context).size.width;
                                    // return Scaffold(
                                    // appBar: AppBar(
                                    // title: Text('Scan your Skin'),backgroundColor:Color(0xff787276) ,),
                                    // body: Container(
                                    // height: h,
                                    // width: w,
                                    // child: Column(
                                    // children: [
                                    // Container(
                                    // height: 150,
                                    // width: 150,
                                    // padding: EdgeInsets.all(10),
                                    // child: Image.asset('assets/image/bb.JPEG'),
                                    // ),
                                    // Container(
                                    // child: Text('Scan Skin',
                                    // style: TextStyle(color: Color(0xff787276),
                                    // fontSize: 20,
                                    // fontWeight: FontWeight.bold,
                                    // ),),),
                                    // SizedBox(height: 50),
                                    // Container(
                                    // child: Column(
                                    // children: [
                                    // Container(
                                    // padding: EdgeInsets.only(left: 10, right: 10),
                                    // height:50,
                                    // width: double.infinity,
                                    // child: ElevatedButton(
                                    // onPressed: () {
                                    // pickImage();
                                    // },
                                    // style: ElevatedButton.styleFrom(
                                    // primary: Color(0xffbc98a1),
                                    // shape: RoundedRectangleBorder(
                                    // borderRadius: BorderRadius.circular(10),
                                    // ),
                                    // ),
                                    // child: Text('Camera',
                                    // ),
                                    // ),
                                    // ),
                                    // SizedBox(height: 10),
                                    // Container(
                                    // padding: EdgeInsets.only(left: 10, right: 10),
                                    // height: 50,
                                    // width: double.infinity,
                                    // child: ElevatedButton(
                                    // onPressed: () {
                                    // pickImage1();
                                    // },
                                    // style: ElevatedButton.styleFrom(
                                    // primary: Color(0xffbc98a1),
                                    // shape: RoundedRectangleBorder(
                                    // borderRadius: BorderRadius.circular(10),
                                    // ),
                                    // ),
                                    // child: Text('Gallery',
                                    // ),
                                    // ),
                                    // ),
                                    // ],
                                    // ),
                                    // ),
                                    // loading != true
                                    // ? Container(
                                    // child: Column(
                                    // children: [
                                    // Container(
                                    // height:150,
                                    // // width: double.infinity,
                                    // padding: EdgeInsets.all(15),
                                    // child: Image.file(_image!),
                                    // ),
                                    // _output != null
                                    // ? Text(
                                    // (Classifications[0]).toString(),
                                    // )
                                    //     : Text(''),
                                    // _output != null
                                    // ? Text(
                                    // 'Confidence: ' +
                                    // (Classifications[0]['confidence']).toString(),
                                    // )
                                    //     : Text('')
                                    // ],
                                    // ),
                                    //
                                    // )
                                    //     : Container()
                                    // ],
                                    // ),
                                    // ),
                                    // );
                                    // }
                                    // }

// import 'dart:io';
// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:tflite/tflite.dart';
//
// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   bool loading = true;
//   File? _image;
//   List? _output;

//   @override
//   void initState() {
//     super.initState();
//     loadModel().then((value) {
//       setState(() {
//         loading = false;
//       });
//     });
//   }
//
//   Future imageClassification(File image) async {
//     final List? output = await Tflite.runModelOnImage(
//       path: image.path,
//       numResults: 2,
//       threshold: 0.5,
//       imageMean: 127.5,
//       imageStd: 127.5,
//     );
//
//     setState(() {
//       loading = false;
//       _output = output;
//     });
//   }
//
//   Future loadModel() async {
//     await Tflite.loadModel(
//       model: 'assets/sad.tflite',
//       labels: 'assets/basma.txt',
//       isAsset: true,
//       useGpuDelegate: false,
//       numThreads: 1,
//     );
//
//     setState(() {
//       loading = false;
//     });
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//     Tflite.close();
//   }
//
//   Future pickImage(ImageSource source) async {
//     final picker = ImagePicker();
//     final pickedFile = await picker.pickImage(source: source);
//
//     if (pickedFile != null) {
//       File image = File(pickedFile.path);
//       setState(() {
//         loading = true;
//         _image = image;
//       });
//
//       await imageClassification(image);
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Scan your Skin'),
//         backgroundColor: Color(0xff787276),
//       ),
//       body: Column(
//         children: [
//           // ... الأجزاء الأخرى من واجهة المستخدم هنا
//
//           loading != true
//               ? Column(
//             children: [
//               Container(
//                 height: 190,
//                 padding: EdgeInsets.all(15),
//                 child: Image.file(_image!),
//               ),
//               _output != null
//                   ? Text((_output?[0]['label']).toString())
//                   : Text(''),
//               _output != null
//                   ? Text(
//                 'Confidence: ' +
//                     (_output?[0]['confidence']).toString(),
//               )
//                   : Text(''),
//             ],
//           )
//               : Container(),
//         ],
//       ),
//     );
//   }
// }
// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:tflite/tflite.dart';
// import 'package:path/path.dart';
//
// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   bool loading = true;
//   File? _image = File('');
//   List? _output;
//   List Classifications = [];
//   final imagepicker = ImagePicker();
//
//   @override
//   void initState() {
//     super.initState();
//     loadModel().then((value) {
//       setState(() {
//         loading = false;
//       });
//     });
//   }
//
//   Future imageClassification(File image) async {
//     final List? output = await Tflite.runModelOnImage(
//       path: image!.path,
//       numResults: 9,
//       threshold: 0.5,
//       imageMean: 127.5,
//       imageStd: 127.5,
//     );
//
//     setState(() {
//       loading = false;
//      _output = output;
//       Classifications = _output!;
//     });
//   }
//
//   Future loadModel() async {
//     var output = await Tflite.loadModel(
//       model: 'assets/model_unquant.tflite',
//       labels: 'assets/labels.txt',
//       isAsset: true,
//       useGpuDelegate: false,
//       numThreads: 1,
//     );
//     setState(() {
//       loading = false;
//       _output = output as List?;
//     });
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//     Tflite.close();
//   }
//
//   Future pickImage() async {
//     final ImagePicker _picker = ImagePicker();
//     final XFile? pickedFile = await _picker.pickImage(
//       source: ImageSource.camera,
//     );
//
//     if (pickedFile != null) {
//       File image = File(pickedFile.path);
//       setState(() {
//         loading = true;
//         _image = image;
//       });
//       await imageClassification(image);
//     }
//   }
//
//   Future pickImage1() async {
//     final ImagePicker _picker = ImagePicker();
//     final XFile? pickedFile = await _picker.pickImage(
//       source: ImageSource.gallery,
//     );
//
//     if (pickedFile != null) {
//       print(pickedFile.path); // Ensure path is selected here
//       File image = File(pickedFile.path);
//       setState(() {
//         loading = false;
//         _image = image;
//       });
//       await imageClassification(image);
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     var h = MediaQuery.of(context).size.height;
//     var w = MediaQuery.of(context).size.width;
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Scan your Skin'),
//         backgroundColor: Color(0xff787276),
//       ),
//       body: Container(
//         height: h,
//         width: w,
//         child: Column(
//           children: [
//             Container(
//               height: 150,
//               width: 150,
//               padding: EdgeInsets.all(10),
//               child: Image.asset('assets/image/bb.JPEG'),
//             ),
//             Container(
//               child: Text(
//                 'Scan Skin',
//                 style: TextStyle(
//                   color: Color(0xff787276),
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//             SizedBox(height: 50),
//             Container(
//               child: Column(
//                 children: [
//                   Container(
//                     padding: EdgeInsets.only(left: 10, right: 10),
//                     height: 50,
//                     width: double.infinity,
//                     child: ElevatedButton(
//                       onPressed: () {
//                         pickImage();
//                       },
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Color(0xffbc98a1),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                       ),
//                       child: Text('Camera'),
//                     ),
//                   ),
//                   SizedBox(height: 10),
//                   Container(
//                     padding: EdgeInsets.only(left: 10, right: 10),
//                     height: 50,
//                     width: double.infinity,
//                     child: ElevatedButton(
//                       onPressed: () {
//                         pickImage1();
//                       },
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Color(0xffbc98a1),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                       ),
//                       child: Text('Gallery'),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             loading != true
//                 ? Container(
//               child: Column(
//                 children: [
//                   Container(
//                     height: 170,
//                     padding: EdgeInsets.all(15),
//                     child: Image.file(_image!),
//                   ),
//                   _output != null
//                       ? Text(
//                     (Classifications[0]['labels']).toString().substring(0),
//                   )
//                       : Text('  '),
//                   _output != null
//                       ? Text(
//                     'Confidence: ' +
//                         (Classifications[0]['confidence'])
//                             .toString(),
//                   )
//                       : Text(''),
//                 ],
//               ),
//             )
//                 : Container(),
//           ],
//         ),
//       ),
//     );
//   }
// }
//hhhhhhhhhhhhhhhhhhhhhgradutionhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh
//
// import 'dart:ffi';
// import 'dart:io';
// // import 'dart:convert';
//
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:tflite/tflite.dart';
// import 'package:path/path.dart';
//
//  class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     throw UnimplementedError();
//   }
//   bool loading = true;
//   File? _image = File('');
//   List? _output;
//   //ate List outputs;
//   List? Classifications = [];
//   final imagepicker = ImagePicker();
//
//   @override
//   void initState() {
//     //loading = true;
//     super.initState();
//     loadModel().then((value) {
//       setState(() {
//         loading = false;
//       });
//     });
//   }
//
//   Future imageClassification(File image) async {
//     final  output = await Tflite.runModelOnImage(
//       path: image.path,
//       numResults: 2,
//       threshold: 0.5,
//       imageMean: 0.0,
//       imageStd: 255.0
//     );
//
//
//       setState(() {
//         loading = false;
//         Classifications =output;
//       });
//     }
//
//
//
//   Future loadModel() async {
//     var outputs = await Tflite.loadModel(
//       model: 'assets/sad.tflite',
//       labels: 'assets/basma.txt',
//       isAsset: true,
//       useGpuDelegate: false,
//       numThreads: 1,
//
//     );
//    setState(() {
//       loading = false;
//
//     Classifications  = outputs as List? ;  //c=c
//     });
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//     Tflite.close();
//   }
//
//   Future pickImage() async {
//     final ImagePicker _picker = ImagePicker();
//     final XFile? pickedFile = await _picker.pickImage(
//       source: ImageSource.camera,
//     );
//
//     if (pickedFile != null) {
//       File image = File(pickedFile.path);
//       setState(() {
//         loading = true;
//         _image = image;
//       });
//       await imageClassification(image);
//     }
//   }
//
//   Future pickImage1() async {
//     final ImagePicker _picker = ImagePicker();
//     final XFile? pickedFile = await _picker.pickImage(
//       source: ImageSource.gallery,
//     );
//
//     if (pickedFile != null) {
//       print(pickedFile.path); // Ensure path is selected here
//       File image = File(pickedFile.path);
//       setState(() {
//         loading = false;
//         _image = image;
//         if (image == null)
//
//          return null;
//
//    print(image.path);
//       loading = true;
//         Classifications= _output;
//       });
//       await imageClassification(image);
//     }
//   }
//
//   @override
//   Widget Builder(BuildContext context) {
//     var h = MediaQuery.of(context).size.height;
//     var w = MediaQuery.of(context).size.width;
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Scan your Skin'),
//         backgroundColor: Color(0xff787276),
//       ),
//       body: Container(
//         height: h,
//         width: w,
//         child: Column(
//           children: [
//             Container(
//               height: 150,
//               width: 150,
//               padding: EdgeInsets.all(10),
//               child: Image.asset('assets/image/bb.JPEG'),
//             ),
//             Container(
//               child: Text(
//                 'Scan Skin',
//                 style: TextStyle(
//                   color: Color(0xff787276),
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//             SizedBox(height: 50),
//             Container(
//               child: Column(
//                 children: [
//                   Container(
//                     padding: EdgeInsets.only(left: 10, right: 10),
//                     height: 50,
//                     width: double.infinity,
//                     child: ElevatedButton(
//                       onPressed: () {
//                         pickImage();
//                       },
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Color(0xffbc98a1),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                       ),
//                       child: Text('Camera'),
//                     ),
//                   ),
//                   SizedBox(height: 10),
//                   Container(
//                     padding: EdgeInsets.only(left: 10, right: 10),
//                     height: 50,
//                     width: double.infinity,
//                     child: ElevatedButton(
//                       onPressed: () {
//                         pickImage1();
//                       },
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Color(0xffbc98a1),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                       ),
//                       child: Text('Gallery'),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//
//             loading == false
//                 ? Container(
//               child: Column(
//                 children: [
//                   Container(
//                     height: 190,
//                     padding: EdgeInsets.all(15),
//                     child: Image.file(_image!),
//                   ),
//
//
//                     _output != null
//
//                       ? Text(
//                     (Classifications![0]['labels']).toString(),
//                   )
//                       :  Text(''),
//                   _output != null
//                       ? Text(
//                     'Confidence: ' +
//                         (Classifications![0]['confidence'])
//                             .toString(),
//                   )
//                       : Text(''),
//                 ],
//               ),
//             )
//                 : Container(),
//           ],
//         ),
//       ),
//     );
//   }
//  }








import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tflite/tflite.dart';
import 'package:path/path.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool loading = true;
  File? _image = File('');
  List? _output;
  List Classifications = [];
  final imagepicker = ImagePicker();

  @override
  void initState() {
    super.initState();
    loadModel().then((value) {
      setState(() {
        loading = false;
      });
    });
  }

  Future imageClassification(File image) async {
    final List? output = await Tflite.runModelOnImage(
      path: image!.path,
      numResults: 9,
      threshold: 0.5,
      imageMean: 127.5,
      imageStd: 127.5,
    );

    setState(() {
      loading = false;
      _output = output;
      Classifications = _output!;
    });
  }

  Future loadModel() async {
    var output = await Tflite.loadModel(
      model: 'assets/model_unquant....tflite',
      labels: 'assets/labels.txt',
      isAsset: true,
      useGpuDelegate: false,
      numThreads: 1,
    );
    setState(() {
      loading = false;
      _output = output as List?;
    });
  }

  @override
  void dispose() {
    super.dispose();
    Tflite.close();
  }

  Future pickImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? pickedFile = await _picker.pickImage(
      source: ImageSource.camera,
    );

    if (pickedFile != null) {
      File image = File(pickedFile.path);
      setState(() {
        loading = true;
        _image = image;
      });
      await imageClassification(image);
    }
  }

  Future pickImage1() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? pickedFile = await _picker.pickImage(
      source: ImageSource.gallery,
    );

    if (pickedFile != null) {
      print(pickedFile.path); // Ensure path is selected here
      File image = File(pickedFile.path);
      setState(() {
        loading = false;
        _image = image;
      });
      await imageClassification(image);
    }
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('Scan your Skin'),
        backgroundColor: Color(0xff787276),
      ),
      body: Container(
        height: h,
        width: w,
        child: Column(
          children: [
            Container(
              height: 150,
              width: 150,
              padding: EdgeInsets.all(10),
              child: Image.asset('assets/image/cc.png'),
            ),
            Container(
              child: Text(
                'Scan Skin',
                style: TextStyle(
                  color: Color(0xff787276),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 50),
            Container(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        pickImage();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffbc98a1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text('Camera',style:TextStyle(color:  Color(0xfffafafa))),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        pickImage1();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffbc98a1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text('Gallery',style:TextStyle(color:  Color(0xfffafafa))),
                    ),
                  ),
                ],
              ),
            ),
            loading != true
                ? Container(
              child: Column(
                children: [
                  Container(
                    height: 150,
                    padding: EdgeInsets.all(15),
                    child: Image.file(_image!),
                  ),
                  _output != null
                      ? Text(
                    (Classifications[0]['label']).toString().substring(0),
                  )
                      : Text(' '),

                  _output != null
                      ? Text(
                    'Confidence: ' +
                        (Classifications[0]['confidence'])
                            .toString(),
                  )
                      : Text(''),
                  Text('(should be Please consult a doctor) '
                   , style:TextStyle(color:  Color(0xff880e4f))),
                  Text('(or via Al-Haud Al-Marsoud Hospital +20223910898)', style:TextStyle(color:  Color(0xff880e4f))),

                ],
              ),
            )
                : Container(),
          ],
        ),
      ),
    );
  }
}



















































// import 'dart:io';
//
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:tflite/tflite.dart';
//
//
// class UploadingPhotoToModelScreen extends StatefulWidget {
//   const UploadingPhotoToModelScreen({Key? key}) : super(key: key);
//
//   @override
//   State<UploadingPhotoToModelScreen> createState() =>
//       _UploadingPhotoToModelScreenState();
// }
//
// class _UploadingPhotoToModelScreenState
//     extends State<UploadingPhotoToModelScreen> {
//    List? outputs;
//
//   File? _imageFile;
//
//   bool loading = false;
//
//   @override
//   void initState() {
//     super.initState();
//     loading = true;
//
//     loadModel().then((value) {
//       setState(() {
//         loading = false;
//       });
//     });
//   }
//    ImagePicker picker = ImagePicker();
//
//
//    Future<void> getUserFaceImage() async {
//      var image = await picker
//          .pickImage(
//        source: ImageSource.gallery,
//      ).catchError((e) {
//        print('pick image method  error${e.toString()} ');
//        return null ;
//      });
//
//      if (image == null) return null;
//
//      print(image.path);
//      loading = true;
//
//      _imageFile = File(image.path);
//
//
//
//    }
//
//    Future<void> getUserFaceWithCameraImage() async {
//      var image = await picker
//          .pickImage(
//        source: ImageSource.camera,
//      )
//          .catchError((e) {
//        print('pick image method  error${e.toString()} ');
//        return null ;
//      });
//      if (image == null) return null;
//      setState(() {
//        print(image.path);
//        loading = true;
//        _imageFile = File(image.path);
//        classifyImage(File(image.path));
//      });
//    }
//
//    classifyImage(File? image) async {
//      var output = await Tflite.runModelOnImage(
//        path: image!.path,
//        numResults: 2,
//        threshold: 0.2,
//        imageMean: 0.0,
//        imageStd: 255.0,
//        asynch: true,
//      );
//      setState(() {
//        loading = false;
//        outputs = output;
//      });
//    }
//
//    loadModel() async {
//      await Tflite.loadModel(
//        model: 'assets/yolov8.tflite',
//        labels: 'assets/labeels.txt',
//        numThreads: 1,
//        isAsset: true,
//        useGpuDelegate: false,
//      ).then((value) {
//        print('model Loadded ');
//      });
//    }
//
//    @override
//    void dispose() async {
//      super.dispose();
//      await Tflite.close();
//
//    }
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor:Colors.limeAccent ,
//         leading: IconButton(
//           icon: Icon(
//             Icons.arrow_back_ios,
//           ),
//           color: Colors.limeAccent ,
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//         centerTitle: true,
//         title: Text(
//           'AI photo analysis',
//           style: Theme.of(context).textTheme.headlineSmall,
//         ),
//       ),
//       body: loading!
//           ? Center(
//           child: Container(
//             child: CircularProgressIndicator(),
//           ))
//           : Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: Image.asset('assets/images/bb.JPEG'),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Text(
//                   'Upload Your Face Skin\n\r\r\r\r\rClearly Image',
//                   style:
//                   Theme.of(context).textTheme.bodyLarge!.copyWith(
//                     color: Colors.black,
//                     fontSize: 27,
//                     fontStyle: FontStyle.normal,
//                     fontWeight: FontWeight.bold,
//                     wordSpacing: 0,
//                     letterSpacing: 0,
//                   ),
//                 ),
//                 SizedBox(
//                   height: 20.0,
//                 ),
//                 Text(
//                   'For Best Experience and Best Result,',
//                   style: Theme.of(context)
//                       .textTheme
//                       .labelSmall!
//                       .copyWith(
//                     color: Colors.grey[700],
//                     fontSize: 15,
//                     fontStyle: FontStyle.italic,
//                     wordSpacing: 0,
//                     letterSpacing: 0,
//                   ),
//                 ),
//                 Text(
//                   'Please make sure that your face ',
//                   style: Theme.of(context)
//                       .textTheme
//                       .labelSmall!
//                       .copyWith(
//                     color: Colors.grey[700],
//                     fontSize: 15,
//                     fontStyle: FontStyle.italic,
//                     wordSpacing: 0,
//                     letterSpacing: 0,
//                   ),
//                 ),
//                 Text(
//                   'skin photo you upload is clear ,',
//                   style: Theme.of(context)
//                       .textTheme
//                       .labelSmall!
//                       .copyWith(
//                     color: Colors.grey[700],
//                     fontSize: 15,
//                     fontStyle: FontStyle.italic,
//                     wordSpacing: 0,
//                     letterSpacing: 0,
//                   ),
//                 ),
//                 Text(
//                   ', in a light place, straight',
//                   style: Theme.of(context)
//                       .textTheme
//                       .labelSmall!
//                       .copyWith(
//                     color: Colors.grey[700],
//                     fontSize: 15,
//                     fontStyle: FontStyle.italic,
//                     wordSpacing: 0,
//                     letterSpacing: 0,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           GestureDetector(
//             onTap: () {
//
//               getUserFaceImage().then((value) {
//                 Future.delayed(
//                   Duration(seconds: 1),
//                 ).then((value) {
//
//                   print('done') ;
//                   showDialog(
//                     context: context,
//                     builder: (context) => AlertDialog(
//                       alignment: Alignment.center,
//                       backgroundColor: Colors.white,
//                       title: const Center(
//                         child: Text(
//                           'Result :',
//                           style: TextStyle(
//                               fontSize: 23,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.limeAccent),
//                         ),
//                       ),
//                       content: Column(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         mainAxisSize: MainAxisSize.min,
//                         children: [
//                           Padding(
//                             padding: EdgeInsets.only(top: 5.0),
//                             child:
//
//                             _imageFile == null
//                                 ? Container()
//                                 : Image.file(
//                               _imageFile!,
//                             ),
//                           ),
//                           const SizedBox(
//                             height: 20.0,
//                           ),
//                           RichText(
//                             text: TextSpan(
//                               children: [
//                                 TextSpan(
//                                   text:
//                                   ' According to our analysis , your skin is suffering from the  ',
//                                   style: TextStyle(
//                                       fontWeight: FontWeight.w700,
//                                       fontSize: 15,
//                                       color: Colors.black),
//                                 ),
//                                 TextSpan(
//                                   text: outputs != null
//                                       ? '\' ${outputs![0]['label'].toString().substring(2)} \'\n'
//                                       : '',
//                                   style: TextStyle(
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 19,
//                                     color: Colors.blue[500],
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Text(
//                             'For more details about your disease \nand some other diseases , please ',
//                             style: TextStyle(
//                               fontWeight: FontWeight.w700,
//                               fontSize: 13,
//                               color: Colors.black,
//                             ),
//                           ),
//                           OutlinedButton(
//
//                             onPressed: () {
//                               Navigator.pop(context);
//                             },
//                             child: Text(
//                               'Go  there',
//                               style: TextStyle(
//                                   color: Colors.limeAccent,
//                                   fontWeight: FontWeight.bold,
//                                   letterSpacing: 1
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                       shadowColor: Colors.blue[100],
//                       actions: [
//                         Padding(
//                           padding: const EdgeInsets.only(
//                               right: 35, bottom: 7.0),
//                           child: myButton(
//                               width: 100,
//                               height: 30,
//                               color: Colors.limeAccent,
//                               textSize: 13,
//                               textcolor: Colors.white,
//                               text: 'Back Home',
//                               onTap: () {
//                                 Navigator.pop(context);
//                               }),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(bottom: 7.0),
//                           child: myButton(
//                               width: 150,
//                               height: 30,
//                               color: Colors.limeAccent,
//                               textSize: 13,
//                               textcolor: Colors.white,
//                               text: 'Try another Image',
//                               onTap: () {
//                                 Navigator.pop(context);
//                               }),
//                         ),
//                       ],
//                     ),
//                   );
//
//
//                 });
//               });
//
//
//             },
//             child: Padding(
//               padding: const EdgeInsets.all(12.0),
//               child: Center(
//                 child: Container(
//                   decoration: BoxDecoration(
//                     color: Colors.limeAccent,
//                     borderRadius: BorderRadius.circular(20.0),
//                   ),
//                   width: double.infinity,
//                   height: 55,
//                   child: Center(
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Text(
//                             'Upload Image ',
//                             style: const TextStyle(
//                               color: Colors.white,
//                               fontWeight: FontWeight.bold,
//                               fontSize: 18,
//                             ),
//                           ),
//                           SizedBox(
//                             width: 20.0,
//                           ),
//                           Icon(
//                             Icons.arrow_back_ios,
//                             color: Colors.lightBlueAccent[100],
//                           )
//                         ],
//                       )),
//                 ),
//               ),
//             ),
//           ),
//           Text('OR',style: Theme.of(context).textTheme.labelSmall!.copyWith(color: Colors.lime),) ,
//           GestureDetector(
//             onTap: () {
//               getUserFaceWithCameraImage().then((value) {
//                 Future.delayed(
//                   Duration(seconds: 1),
//                 ).then((value) {
//                   showDialog(
//                     context: context,
//                     builder: (context) => AlertDialog(
//                       alignment: Alignment.center,
//                       backgroundColor: Colors.white,
//                       title: const Center(
//                         child: Text(
//                           'Result :',
//                           style: TextStyle(
//                               fontSize: 23,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.lightBlue),
//                         ),
//                       ),
//                       content: Column(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         mainAxisSize: MainAxisSize.min,
//                         children: [
//                           Padding(
//                             padding: EdgeInsets.only(top: 5.0),
//                             child: _imageFile == null
//                                 ? Container()
//                                 : Image.file(
//                               _imageFile!,
//                             ),
//                           ),
//                           const SizedBox(
//                             height: 20.0,
//                           ),
//                           RichText(
//                             text: TextSpan(
//                               children: [
//                                 TextSpan(
//                                   text:
//                                   ' According to our analysis , your skin is suffering from the  ',
//                                   style: TextStyle(
//                                       fontWeight: FontWeight.w700,
//                                       fontSize: 15,
//                                       color: Colors.black),
//                                 ),
//                                 TextSpan(
//                                   text: outputs != null
//                                       ? '\' ${outputs![0]['label'].toString().substring(2)} \'\n'
//                                       : '',
//                                   style: TextStyle(
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 19,
//                                     color: Colors.blue[500],
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Text(
//                             'For more details about your disease \nand some other diseases , please ',
//                             style: TextStyle(
//                               fontWeight: FontWeight.w700,
//                               fontSize: 13,
//                               color: Colors.black,
//                             ),
//                           ),
//                           OutlinedButton(
//
//                             onPressed: () {
//                               Navigator.pop(context);
//                             },
//                             child: Text(
//                               'Go  there',
//                               style: TextStyle(
//                                   color: Colors.lime,
//                                   fontWeight: FontWeight.bold,
//                                   letterSpacing: 1
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                       shadowColor: Colors.blue[100],
//                       actions: [
//                         Padding(
//                           padding: const EdgeInsets.only(
//                               right: 35, bottom: 7.0),
//                           child: myButton(
//                               width: 100,
//                               height: 30,
//                               color: Colors.lime,
//                               textSize: 13,
//                               textcolor: Colors.white,
//                               text: 'Back Home',
//                               onTap: () {
//                                 Navigator.pop(context);
//                               }),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(bottom: 7.0),
//                           child: myButton(
//                               width: 150,
//                               height: 30,
//                               color: Colors.lime,
//                               textSize: 13,
//                               textcolor: Colors.white,
//                               text: 'Try another Image',
//                               onTap: () {
//                                 Navigator.pop(context);
//                               }),
//                         ),
//                       ],
//                     ),
//                   );
//                 });
//               });
//             },
//             child: Padding(
//               padding: const EdgeInsets.all(12.0),
//               child: Center(
//                 child: Container(
//                   decoration: BoxDecoration(
//                     color: Colors.lime,
//                     borderRadius: BorderRadius.circular(20.0),
//                   ),
//                   width: double.infinity,
//                   height: 55,
//                   child: Center(
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Text(
//                             'Take a Photo ',
//                             style: const TextStyle(
//                               color: Colors.white,
//                               fontWeight: FontWeight.bold,
//                               fontSize: 18,
//                             ),
//                           ),
//                           SizedBox(
//                             width: 20.0,
//                           ),
//                           Icon(
//                             Icons.linked_camera_sharp,
//                             color: Colors.lightBlueAccent[100],
//                           )
//                         ],
//                       )),
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 40,
//           ),
//
//
//         ],
//       ),
//
//
//     );
//   }
//
// }
//
// // File? profileImage;
//
//
//
//
// navigateTo({
//   required BuildContext context,
//   required Widget widget,
// }) =>
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => widget,
//       ),
//     );
//
// Widget myButton({
//   required String text,
//   required Function onTap,
//   double? width = 90.0,
//   double? height = 60.0,
//   BuildContext? context ,
//   Color? color ,
//   Color? textcolor =Colors.white ,
//   double textSize =18.0,
// }) =>
//     GestureDetector(
//       onTap: () {
//         onTap();
//       },
//       child: Container(
//         decoration: BoxDecoration(
//           color: color ,
//           borderRadius: BorderRadius.circular(20.0),
//         ),
//         width: width,
//         height: height,
//         child: Center(
//           child: Text(
//             text,
//             style:  TextStyle(
//               color: textcolor,
//               fontWeight: FontWeight.bold,
//               fontSize: textSize,
//             ),
//           ),
//         ),
//       ),
//     );
























