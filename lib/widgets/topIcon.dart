import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TopIcon extends StatelessWidget {

  String iconImage;
  String iconName;

  TopIcon(this.iconImage, this.iconName);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(8),
          margin: EdgeInsets.only(top: 10, bottom: 10, right: 20),
          width: 60,
          height: 54,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 3,
                offset: Offset(2, 3), // changes position of shadow
              ),
            ],
          ),
          child:
          SvgPicture.asset('lib/assets/${iconImage}.svg'),
        ),
        Text(
          iconName,
          style: TextStyle(fontSize: 12),
        )
      ],
    );
  }
}
