import 'package:crackerbook/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Study extends StatelessWidget {
  StudyInfo studyInfo;
  Study(this.studyInfo);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        // 전체
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Column(
                // 프로필 있는 부분
                children: [
                  SvgPicture.asset(studyInfo.charImgPath, width: 56,),
                  SizedBox(height: 5),
                  Text(studyInfo.charName, style: TextStyle(fontSize: 12, color: Color(0xff999999)),)
                ],
              ),
              SizedBox(width: 20),
              Column(
                // 가운데에 있는 세줄
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    // 세줄 상단
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            'lib/assets/miniBook.svg',
                            color: bookBlue,
                          ),
                          SizedBox(width: 5,),
                          Text('토론', style: TextStyle(color: bookBlue, fontSize: 12))
                        ],
                      ),
                      SizedBox(width: 20),
                      Row(
                        children: [
                          SvgPicture.asset('lib/assets/member.svg'),
                          Text(
                            '멤버',
                            style: TextStyle(color: bookBlue, fontSize: 12),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "${studyInfo.memberCount}/${studyInfo.memberLimitCount}",
                            style: TextStyle(color: bookBlue, fontSize: 12),
                          )
                        ],
                      ),
                    ],
                  ),
                  Text(
                    studyInfo.title,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  // 세줄 가운데
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    studyInfo.period,
                    style: TextStyle(fontSize: 12, color: Color(0xff777777)),
                  )
                ],
              ),
            ],
          ),
          Column(
            children: [SvgPicture.asset('lib/assets/heart.svg'), Text('6')],
          )
        ],
      ),
    );
  }
}
