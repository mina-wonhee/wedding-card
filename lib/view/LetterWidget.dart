import 'package:flutter/material.dart';

class LetterWidget extends StatelessWidget {
  const LetterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment : CrossAxisAlignment.start,
      children: [
        Container(
            margin: EdgeInsets.only(top: 150, left: 25, right: 25),
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
      ],
    );
  }
}
