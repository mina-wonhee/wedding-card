import 'package:flutter/material.dart';

class DdayCalendarWidget extends StatefulWidget {

  @override
  _DdayCalendarWidgetState createState() => _DdayCalendarWidgetState();
}

class _DdayCalendarWidgetState extends State<DdayCalendarWidget> {

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
