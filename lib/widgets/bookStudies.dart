import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../main.dart';

// class BookStudies extends StatelessWidget {
//
//   List<StudyInfo> studyinfoList;
//
//   List<Widget> bookList = <Widget>[];
//   studyinfoList.forEach((studyInfo) {
//   bookList.add(Study(studyInfo));
//   });
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.symmetric(vertical: 20),
//       child: Column(
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.end,
//             children: [
//               Text(
//                 "'눈치껏 못 배웁니다, 일센스...'의 \n스터디",
//                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//               ),
//               Text('전체보기 >')
//             ],
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           Stack(children: [
//             Container(
//                 height: 220,
//                 decoration: BoxDecoration(
//                   color: Color(0xff0fa76a),
//                   borderRadius: BorderRadius.circular(20),
//                 )),
//             Center(
//               child: Container(
//                   width: 115,
//                   // height: 100,
//                   decoration: BoxDecoration(
//                     color: Color(0xff0fa76a),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.black.withOpacity(0.1),
//                         spreadRadius: 3,
//                         blurRadius: 7,
//                         offset: Offset(0, 5),
//                       )
//                     ],
//                   ),
//                   child: Image.asset(
//                     'lib/assets/greenBook.jpg',
//                   )),
//             ),
//             Positioned(
//               right: 20,
//               top: 20,
//               child: Column(
//                 children: [
//                   SvgPicture.asset('lib/assets/bookLike.svg'),
//                   Text('14')
//                 ],
//               ),
//             )
//           ]),
//           SizedBox(
//             height: 20,
//           ),
//           Column(
//             children: bookList,
//           )
//         ],
//       ),
//     );
//   }
// }
