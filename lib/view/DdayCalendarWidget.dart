import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DdayCalendarWidget extends StatelessWidget {

  Widget getDayWidget(bool isActive, int day) {

    if(isActive) {
      return Container(
        height: 40,
        width: 40,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.brown,
            shape: BoxShape.circle
        ),
        child: Text(
          day>0?day.toString():"",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      );
    }

    return Container(
      height: 40,
      width: 40,
      alignment: Alignment.center,
      child: Text(
        day>0?day.toString():"",
        style: TextStyle(
          fontSize: 20,
          color: Color.fromARGB(255, 85, 85, 85),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final weddingDate = DateTime(2021, 10, 16);
    final curDate = DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);
    final dday = weddingDate.difference(curDate).inDays;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              '구글 캘린더로 일정 추가하기',
              style: TextStyle(
                fontSize: 18,
                color: Color.fromARGB(255, 110, 110, 110),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            FloatingActionButton(onPressed: () async {
              String url = "https://calendar.google.com/calendar/render?action=TEMPLATE&dates=20211016T041000Z%2F20211016T051000Z&details=%EC%9B%90%ED%9D%AC%2C%20%EB%AF%BC%EC%95%84%EC%9D%98%20%EA%B2%B0%ED%98%BC%EC%8B%9D%EC%9E%85%EB%8B%88%EB%8B%A4.&location=%EB%B6%84%EB%8B%B9%EC%95%A4%EC%8A%A4%ED%80%98%EC%96%B4%20%EC%9B%A8%EB%94%A9%ED%99%80%2C%20%EB%8C%80%ED%95%9C%EB%AF%BC%EA%B5%AD%20%EA%B2%BD%EA%B8%B0%EB%8F%84%20%EC%84%B1%EB%82%A8%EC%8B%9C%20%EB%B6%84%EB%8B%B9%EA%B5%AC%20%EA%B5%AC%EB%AF%B81%EB%8F%99%20%ED%83%84%EC%B2%9C%EC%83%81%EB%A1%9C151%EB%B2%88%EA%B8%B8%2020&text=%EC%9B%90%ED%9D%AC%2C%20%EB%AF%BC%EC%95%84%EC%9D%98%20%EA%B2%B0%ED%98%BC%EC%8B%9D";
              await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';
            }, child: Icon(Icons.event)),
            SizedBox(
              width: 20,
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          color: Color.fromARGB(255, 241, 221, 207),
          padding: EdgeInsets.only(left:30, right:30),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                '10월 16일',
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 85, 85, 85),
                ),
              ),
              Text(
                '토요일 오후 1시 10분',
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 85, 85, 85),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'SUN',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 85, 85, 85),
                    ),
                  ),
                  Text(
                    'MON',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 85, 85, 85),
                    ),
                  ),
                  Text(
                    'TUE',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 85, 85, 85),
                    ),
                  ),
                  Text(
                    'WED',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 85, 85, 85),
                    ),
                  ),
                  Text(
                    'THU',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 85, 85, 85),
                    ),
                  ),
                  Text(
                    'FRI',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 85, 85, 85),
                    ),
                  ),
                  Text(
                    'SAT',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 85, 85, 85),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  getDayWidget(false, -1),
                  getDayWidget(false, -1),
                  getDayWidget(false, -1),
                  getDayWidget(false, -1),
                  getDayWidget(false, -1),
                  getDayWidget(false, 1),
                  getDayWidget(false, 2),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  getDayWidget(false, 3),
                  getDayWidget(false, 4),
                  getDayWidget(false, 5),
                  getDayWidget(false, 6),
                  getDayWidget(false, 7),
                  getDayWidget(false, 8),
                  getDayWidget(false, 9),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  getDayWidget(false, 10),
                  getDayWidget(false, 11),
                  getDayWidget(false, 12),
                  getDayWidget(false, 13),
                  getDayWidget(false, 14),
                  getDayWidget(false, 15),
                  getDayWidget(true, 16),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  getDayWidget(false, 17),
                  getDayWidget(false, 18),
                  getDayWidget(false, 19),
                  getDayWidget(false, 20),
                  getDayWidget(false, 21),
                  getDayWidget(false, 22),
                  getDayWidget(false, 23),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  getDayWidget(false, 24),
                  getDayWidget(false, 25),
                  getDayWidget(false, 26),
                  getDayWidget(false, 27),
                  getDayWidget(false, 28),
                  getDayWidget(false, 29),
                  getDayWidget(false, 30),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  getDayWidget(false, 31),
                  getDayWidget(false, -1),
                  getDayWidget(false, -1),
                  getDayWidget(false, -1),
                  getDayWidget(false, -1),
                  getDayWidget(false, -1),
                  getDayWidget(false, -1),
                ],
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          '원희 ♥ 민아의 결혼식이 $dday일 남았습니다.',
          style: TextStyle(
            fontSize: 20,
            color: Color.fromARGB(255, 85, 85, 85),
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
