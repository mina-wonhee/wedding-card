import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'AlbumWidget.dart';
import 'CeleBoard.dart';
import 'ContactWidget.dart';
import 'DdayCalendarWidget.dart';
import 'MapWidget.dart';


class WeddingCardPage extends StatefulWidget {

  @override
  _WeddingCardPageState createState() => _WeddingCardPageState();
}

class _WeddingCardPageState extends State<WeddingCardPage> with AutomaticKeepAliveClientMixin {

  double get _height => MediaQuery.of(context).size.height;
  double get _width => MediaQuery.of(context).size.width;
  double get _imageHeight => _width * 1.2;

  double _currOffset = 0.0;

  bool _updateOffsetAccordingToScroll(ScrollNotification notification) {

    if (notification is ScrollUpdateNotification && notification.depth == 0 && notification.metrics.pixels < _height) {
      _currOffset = notification.metrics.pixels;
      setState(() => {});
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: NotificationListener<ScrollNotification>(
          onNotification: _updateOffsetAccordingToScroll,
          child: ScrollConfiguration(
            behavior: NoScrollGlow(),
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: -0.25 * _currOffset,
                  child: Image.asset(
                    'assets/images/resize20/12.jpg',
                    fit: BoxFit.fitWidth,
                    width: _width,
                    height: _imageHeight,
                  ),
                ),
                Positioned(
                  top: _imageHeight * 0.8 -
                      _currOffset + 1,
                  height: _imageHeight * 0.2,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: const <double>[0, 1],
                        colors: [Colors.white.withOpacity(0), Colors.white],
                      ),
                    ),
                    child: SizedBox(width: _width),
                  ),
                ),
                Positioned(
                  top: -0.8 * _currOffset,
                  child: SizedBox(
                    height: _imageHeight* 0.85,
                    width: _width,
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              '10/16',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 35,
                                color: Colors.white,
                                shadows: <Shadow>[
                                  Shadow(
                                    offset: Offset(2.0, 2.0),
                                    blurRadius: 3.0,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                  ),
                                  Shadow(
                                    offset: Offset(2.0, 2.0),
                                    blurRadius: 8.0,
                                    color: Color.fromARGB(125, 0, 0, 255),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 7),
                            Text(
                              '이원희 & 김민아',
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                shadows: <Shadow>[
                                  Shadow(
                                    offset: Offset(2.0, 2.0),
                                    blurRadius: 3.0,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                  ),
                                  Shadow(
                                    offset: Offset(2.0, 2.0),
                                    blurRadius: 8.0,
                                    color: Color.fromARGB(125, 0, 0, 255),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: _imageHeight),
                      Container(
                        width: _width,
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment : CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 200, left: 25, right: 25),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '결혼합니다.',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 30,
                                      color: Color.fromARGB(255, 198, 152, 86),
                                    ),
                                  ),
                                  SizedBox(height: 100,),
                                  Text(
                                    '각자 서로 다른 길을 걸어온 저희가',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromARGB(255, 85, 85, 85),
                                    ),
                                  ),
                                  SizedBox(height: 9,),
                                  Text(
                                    '이제 부부의 연으로 한 길을 걸어가고자 합니다.',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromARGB(255, 85, 85, 85),
                                    ),
                                  ),
                                  SizedBox(height: 9,),
                                  Text(
                                    '평생을 좋은 남편, 좋은 아내로 살겠습니다.',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromARGB(255, 85, 85, 85),
                                    ),
                                  ),
                                  SizedBox(height: 9,),
                                  Text(
                                    '한 곳을 바라보며 첫발을 떼는 자리입니다.',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromARGB(255, 85, 85, 85),
                                    ),
                                  ),
                                  SizedBox(height: 9,),
                                  Text(
                                    '그 시작을 축복해 주시면 감사하겠습니다.',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromARGB(255, 85, 85, 85),
                                    ),
                                  ),
                                ],
                              )

                            ),
                            Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(top: 200),
                              child: Text.rich(TextSpan(
                                text: "이의갑 · 김연숙",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 136, 127, 110),
                                ),
                                children: <TextSpan> [
                                  TextSpan(
                                    text: "의 장남 ",
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Color.fromARGB(255, 136, 127, 110),
                                    )),
                                  TextSpan(
                                      text: " 원희",
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Color.fromARGB(255, 85, 85, 85),
                                      ))
                                ]
                              ))
                            ),
                            Container(
                                alignment: Alignment.center,
                                margin: EdgeInsets.only(top: 10),
                                child: Text.rich(TextSpan(
                                    text: "김정일 · 정원순",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromARGB(255, 136, 127, 110),
                                    ),
                                    children: <TextSpan> [
                                      TextSpan(
                                          text: "의 장녀 ",
                                          style: TextStyle(
                                            fontSize: 17,
                                            color: Color.fromARGB(255, 136, 127, 110),
                                          )),
                                      TextSpan(
                                          text: " 민아",
                                          style: TextStyle(
                                            fontSize: 25,
                                            color: Color.fromARGB(255, 85, 85, 85),
                                          ))
                                    ]
                                ))
                            ),
                            Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(top: 80),
                              child: Text(
                                '2021. 10. 16. 토요일 오후 1시 10분',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Color.fromARGB(255, 198, 152, 86),
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(top: 10, bottom: 100),
                              child: Text(
                                  '분당앤스퀘어 4층 컨벤션홀',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 23,
                                  color: Color.fromARGB(255, 198, 152, 86),
                                ),
                              ),
                            ),
                            AlbumWidget(),
                            SizedBox(
                              height: 200,
                            ),
                            Container(
                              alignment: Alignment.center,
                            ),
                            DdayCalendarWidget(),
                            MapWidget(),
                            ContactWidget(),
                            CeleBoard(),

                          ],
                        ),
                      )

                    ],
                  ),
                )
              ],
            ),
          ),

        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class NoScrollGlow extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context,
      Widget child,
      AxisDirection axisDirection,
      ) {
    return child;
  }
}
