import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../main.dart';

class LikeRankStudy extends StatelessWidget {

  String bookImg;
  String rankImg;

  LikeRankStudy(this.bookImg, this.rankImg);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                  padding: EdgeInsets.only(top: 4),
                  child: SvgPicture.asset('lib/assets/$bookImg.svg', color: bookGrey,)
              ),
              Positioned(
                  top: 0,
                  child: SvgPicture.asset('lib/assets/$rankImg.svg')
              ),
            ],
          ),
          Row(
            children: [
              SvgPicture.asset('lib/assets/miniBook.svg'),
              Text('토론', style: TextStyle(fontSize: 12, color: bookBlue),),
              SvgPicture.asset('lib/assets/member.svg'),
              Text('멤버 3/6', style: TextStyle(fontSize: 12, color: bookBlue)),
            ],
          ),
          Text('한달 한권', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
          Text('04.26~05.26 토 14:00', style: TextStyle(color: bookGrey, fontSize: 12))
        ],
      ),
    );
  }
}
