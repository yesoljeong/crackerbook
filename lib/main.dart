import 'package:crackerbook/widgets/likeRankStudy.dart';
import 'package:crackerbook/widgets/study.dart';
import 'package:crackerbook/widgets/topIcon.dart';
import 'package:flutter/cupertino.dart';
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
const bookBlue = Color(0xff677AC7);
const bookGrey = Color(0xff999999);

List<Widget> getBookStudies() {
  return [
    BookStudies(BookStudy(
      '눈치껏 못 배웁니다, 일센스...',
      Color(0xff0fa76a),
      'greenBook.jpg',
      [
        StudyInfo('lib/assets/profile2.svg', '데이지', '사회초년생을 위한 직팁 더 길어지면?',
            '2021.05.21 ~ 05.29 토 14:00', 3, 6),
        StudyInfo('lib/assets/profileGreen.svg', '이지지', "'일센스'가 있는 사람이 되기 위해",
            '2021.05.21 ~ 05.29 토 14:00', 2, 6),
      ],
    )),

    BookStudies(BookStudy(
      '생각의 쓰임',
      Color(0xffE9E9E2),
      'thinkBook.svg',
      [
        StudyInfo('lib/assets/profilePuple.svg', '김또깡', '사소한 일상으로 만드는 콘텐츠',
            '2021.05.21 ~ 05.29 토 14:00', 3, 6),
        StudyInfo('lib/assets/profileYellow.svg', '주리', "마케터들의 아이디어 모임",
            '2021.05.21 ~ 05.29 토 14:00', 2, 6),
      ],
    )),
  ];
}

class _myCrackerBookState extends State<myCrackerBook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: SvgPicture.asset('lib/assets/HeaderTitle.svg')),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    SingleChildScrollView(
                      // 탑아이콘들
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TopIcon('chats', '토론'),
                          TopIcon('microphone', '발표'),
                          TopIcon('note', '글쓰기'),
                          TopIcon('desktop', '포트폴리오'),
                          TopIcon('etc', '기타'),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: getBookStudies(),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('좋아요가 많은 스터디', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                        Text('전체보기 >', style: TextStyle(color: bookGrey),)
                      ],
                    ),
                    SizedBox(height: 20),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          LikeRankStudy('categoryBook2', 'like1'),
                          LikeRankStudy('category1', 'like2'),
                          LikeRankStudy('category1', 'like3'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 80, bottom: 20, right: 30, left: 30),
                color: Color(0xffF1F1F3),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('새로 생긴 스터디', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                    SizedBox(height: 30,),
                    Container(
                      padding: EdgeInsets.all(30),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                         Row(
                           children: [
                             SvgPicture.asset('lib/assets/miniBook1.svg', color: bookGrey,),
                             SizedBox(width: 20,),
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
                                           "4/10",
                                           style: TextStyle(color: bookBlue, fontSize: 12),
                                         )
                                       ],
                                     ),
                                   ],
                                 ),
                                 Text(
                                   '하루 한장 아이패드 드로잉',
                                   style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                 ),
                                 // 세줄 가운데
                                 SizedBox(
                                   height: 10,
                                 ),
                                 Text(
                                   '2021.04.26 ~ 05.21 토 14:00',
                                   style: TextStyle(fontSize: 12, color: Color(0xff777777)),
                                 ),
                               ],
                             ),
                           ],
                         ),
                          Column(
                            children: [SvgPicture.asset('lib/assets/heart.svg'), Text('6')],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Container(
          width: 80,
          child: FittedBox(
            child: FloatingActionButton(
              child: Image.asset('lib/assets/cookie.png'),
              onPressed: () {},
              backgroundColor: Colors.pink.withAlpha(0),
              elevation: 0,
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset('lib/assets/home.svg'),
              label: '홈',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.cancel,
                color: Colors.green.withAlpha(0),
              ),
              label: '스터디 만들기',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('lib/assets/myPage.svg'),
              label: '마이페이지',
            ),
          ],
        ));
  }
}

class BookStudy {
  String title;
  Color background;
  String bookImgPath;
  List<StudyInfo> studyInfoList;

  BookStudy(this.title, this.background, this.bookImgPath, this.studyInfoList);
}

class StudyInfo {
  String charImgPath;
  String charName;
  String title;
  String period;
  int memberCount;
  int memberLimitCount;

  StudyInfo(this.charImgPath, this.charName, this.title, this.period,
      this.memberCount, this.memberLimitCount);
}

Widget BookStudies(BookStudy bookStudy) {
  List<Widget> bookList = <Widget>[];
  bookStudy.studyInfoList.forEach((studyInfo) {
    bookList.add(Study(studyInfo));
  });

  return Padding(
    padding: EdgeInsets.symmetric(vertical: 20),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "'${bookStudy.title}'의 \n 스터디",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text('전체보기 >')
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Stack(children: [
          Container(
              height: 220,
              decoration: BoxDecoration(
                color: bookStudy.background,
                borderRadius: BorderRadius.circular(20),
              )),
          Center(
            child: Container(
                width: 115,
                // height: 100,
                decoration: BoxDecoration(
                  color: bookStudy.background,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: Offset(0, 5),
                    )
                  ],
                ),
                child: Image.asset(
                  'lib/assets/${bookStudy.bookImgPath}',
                )),
          ),
          Positioned(
            right: 20,
            top: 20,
            child: Column(
              children: [
                SvgPicture.asset('lib/assets/bookLike.svg'),
                Text('14')
              ],
            ),
          )
        ]),
        SizedBox(
          height: 20,
        ),
        Column(
          children: bookList,
        ),
      ],
    ),
  );
}