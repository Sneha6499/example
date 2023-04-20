import 'package:flutter/cupertino.dart';

class Review extends StatelessWidget {
  String joblocation ;
  String amount;
  String jobtype;
  List experience;
  List expertise;
  List jobfunction;
  List skills;
  List industry;

  Review({required this.joblocation, required this.amount, required this.jobtype, required this.experience,
      required this.expertise, required this.jobfunction, required this.skills, required this.industry});





  @override
  Widget build(BuildContext context) {
    return Container();
  }
}





// import 'package:flutter/material.dart';
//
// class Review extends StatefulWidget {
//   const Review({Key? key}) : super(key: key);
//
//   @override
//   State<Review> createState() => _ReviewState();
// }
//
// class _ReviewState extends State<Review> {
//   String? gender;
//
//   final TextEditingController _controller = new TextEditingController();
//   var items = ['One', 'Two', 'Three', 'Four'];
//
//   String radioButtonItem = 'ONE';
//   TextEditingController dateinput = TextEditingController();
//
//   // Group Value for Radio Button.
//   int id = 1;
//   int num = 1;
//
//   @override
//   void initstate() {
//     dateinput.text = "";
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//         child: Scaffold(
//             body: Padding(
//       padding: const EdgeInsets.only(left: 16.0, right: 16),
//       child: CustomScrollView(slivers: [
//         SliverFillRemaining(
//           hasScrollBody: false,
//           child:
//               Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
//                   Widget>[
//             SizedBox(
//               height: 70,
//             ),
//             Text('Review',
//                 style: TextStyle(
//                     fontSize: 22,
//                     fontWeight: FontWeight.w500,
//                     color: Colors.black)),
//             SizedBox(height: 12),
//         SizedBox(
//           width: 348,
//           height: 79.34,
//           child: Container(
//             decoration: BoxDecoration(
//                 border: Border.all(
//
//                 ),
//                 borderRadius: BorderRadius.all(Radius.circular(10))
//             ),
//                   child:
//                   Padding(
//                     padding: const EdgeInsets.only(left:6.0, right: 6.0,top: 15, bottom: 15),
//                     child: RichText(
//                       text: TextSpan(
//
//                         style: DefaultTextStyle.of(context).style,
//                         children: const <TextSpan>[
//                           TextSpan(text: 'You are almost done!\n',  style: TextStyle(
//
//                               fontSize: 16,
//                               color: Color.fromRGBO(221, 148, 6, 1))),
//                           TextSpan(text: 'Please verify your filled details and submit\nthe form',  style: TextStyle(
//
//                               fontSize: 12,
//                               color: Color.fromRGBO(221, 148, 6, 1))),
//
//
//                         ],
//                       ),
//                     ),
//                   )
//                   ),
//         ),
//             SizedBox(
//               height: 12,
//             ),
//                 Text('Graphic Designer',
//                     style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.w500,
//                         color: Colors.black)),
//                 SizedBox(
//                   height: 12,
//                 ),
//
//                 Container(
//                   margin: EdgeInsets.all(10),
//                   padding: EdgeInsets.all(10),
//                   alignment: Alignment.center,
//                   decoration: BoxDecoration(
//                       color: Colors.orange,
//                       border: Border.all(
//                           color: Colors.blue, // Set border color
//                           width: 3.0),   // Set border width
//                       borderRadius: BorderRadius.all(
//                           Radius.circular(10.0)), // Set rounded corner radius
//                       boxShadow: [BoxShadow(blurRadius: 10,color: Colors.black,offset: Offset(1,3))] // Make rounded corner of border
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.only(left:20),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//
//                 SizedBox(
//                   height: 16,
//                 ),
//
//                 Text('Job Location',
//                     style: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.w500,
//                         color: Color.fromRGBO(16, 95, 80, 1))),
//
//                 Text('Talent Pay',
//                     style: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.w500,
//                         color: Color.fromRGBO(16, 95, 80, 1))),
//                 Text('Flex Options',
//                     style: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.w500,
//                         color: Color.fromRGBO(16, 95, 80, 1))),
//                 Text('Experience',
//                     style: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.w500,
//                         color: Color.fromRGBO(16, 95, 80, 1))),
//                 Text('Expertise',
//                     style: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.w500,
//                         color: Color.fromRGBO(16, 95, 80, 1))),
//                 Text('Job Functions',
//                     style: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.w500,
//                         color: Color.fromRGBO(16, 95, 80, 1))),
//                 Text('Skills',
//                     style: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.w500,
//                         color: Color.fromRGBO(16, 95, 80, 1))),
//                       ],
//                     ),
//                   ),
//                 ),
//
//
//
//
//             Expanded(
//               child: Align(
//                 alignment: Alignment.bottomCenter,
//                 child: Row(
//                   children: [
//                     Container(
//                       height: 45,
//                       width: 175,
//                       child: Padding(
//                         padding: const EdgeInsets.only(right: 20.0),
//                         child: ElevatedButton(
//                           onPressed: () {
//                             // Navigator.push(
//                             //   context,
//                             //   MaterialPageRoute(builder: (context) => const ThirdPage()),
//                             // );
//                           },
//                           child: Text(
//                             "Back",
//                             style: TextStyle(
//                                 fontSize: 13,
//                                 color: Color.fromRGBO(16, 95, 80, 1)),
//                           ),
//                           style: ElevatedButton.styleFrom(
//                               backgroundColor: Color.fromRGBO(237, 249, 246, 1),
//                               minimumSize: const Size.fromHeight(30),
//                               fixedSize: const Size(177, 36),
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(10),
//                               )),
//                         ),
//                       ),
//                     ),
//
//                     Container(
//                       height: 45,
//                       width: 175,
//                       child: Padding(
//                         padding: const EdgeInsets.only(right: 20.0),
//                         child: ElevatedButton(
//                           onPressed: () {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => const Review()),
//                             );
//                           },
//                           child: Text(
//                             "Continue",
//                             style: TextStyle(
//                               fontSize: 13,
//                             ),
//                           ),
//                           style: ElevatedButton.styleFrom(
//                               backgroundColor: Color.fromRGBO(16, 95, 80, 1),
//                               minimumSize: const Size.fromHeight(30),
//                               // fixedSize: const Size(177, 36),
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(10),
//                               )),
//                         ),
//                       ),
//                     ),
//                   ],
//                   mainAxisAlignment: MainAxisAlignment.center,
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 24,
//             ),
//
//           ]),
//         )
//       ]),
//     )));
//   }
// }
