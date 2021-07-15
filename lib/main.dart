import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CrackerBook',
      home: myCrackerBook(),
    );
  }
}

class myCrackerBook extends StatefulWidget {
  @override
  _myCrackerBookState createState() => _myCrackerBookState();
}

const String home = 'lib/assets/home.svg';

class _myCrackerBookState extends State<myCrackerBook> {
  @override
  Widget build(BuildContext context) {

    List topIconsInfo = [
      {
        'title': '토론',
        'image': 'chats'
      },
      {
        'title': '발표',
        'image': 'microphone'
      },
      {
        'title': '글쓰기',
        'image': 'note'
      },
      {
        'title': '포트폴리오',
        'image': 'desktop'
      },
      {
        'title': '기타',
        'image': 'etc'
      },
    ];



    List<Widget> topIcons = <Widget>[];
    for (var i = 0; i < topIconsInfo.length; i++) {

      print('lib/assets/${topIconsInfo[i]['image']}.svg');

      Widget element = Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.only(top: 10, bottom: 10, right: 20),
            width: 60, height: 54,
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
            child: SvgPicture.asset('lib/assets/${topIconsInfo[i]['image']}.svg'),
          ),
          Text(topIconsInfo[i]['title'],style: TextStyle(fontSize: 12),)
        ],
      );
      topIcons.add(element);
    }


    return Scaffold(
        appBar: AppBar(
          title: Center(child: SvgPicture.asset('lib/assets/HeaderTitle.svg')),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: topIcons,
                  ),
                ),
                SizedBox(height: 20,),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("'눈치껏 못 배웁니다, 일센스...'의 \n스터디",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text('전체보기 >')
                      ],
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 230,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 80, height: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.orange
                              ),
                            ),
                            Text('데이지')
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.menu_book_outlined,),
                                    Text('토론')
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.people_outline,),
                                    Text('멤버'),
                                    Text('3/6')
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),

                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset('lib/assets/home.svg'),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('lib/assets/cookie.png'),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('lib/assets/myPage.svg'),
              label: 'School',
            ),
          ],
        ));
  }
}
