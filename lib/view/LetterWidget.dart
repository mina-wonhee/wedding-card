import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LetterWidget extends StatelessWidget {
  const LetterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            margin: EdgeInsets.only(top: 100, left: 25, right: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 180,
                        width: 260,
                        child: ElevatedButton(
                          onPressed: () async {
                            String url = "https://youtu.be/2Z1im7FWYuk";
                            await canLaunch(url)
                                ? await launch(url)
                                : throw 'Could not launch $url';
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                                'assets/images/youtube_live_logo.png'),
                          ),
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.only(left: 0, right: 0),
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                            ),
                            primary: Color.fromARGB(255, 222, 226, 230),
                            onPrimary: Colors.transparent,
                            shadowColor: Colors.transparent,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        '???????????? ???????????? ?????????\n????????? ???????????? ???????????? ??? ????????????.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 23,
                          color: Color.fromARGB(255, 85, 85, 85),
                        ),
                      ),
                      Text(
                        '??? ???????????? ???????????????.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 23,
                          color: Colors.redAccent,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  '???????????????.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    color: Color.fromARGB(255, 198, 152, 86),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  '?????? ?????? ?????? ?????? ????????? ?????????',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 85, 85, 85),
                  ),
                ),
                SizedBox(
                  height: 9,
                ),
                Text(
                  '?????? ????????? ????????? ??? ?????? ??????????????? ?????????.',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 85, 85, 85),
                  ),
                ),
                SizedBox(
                  height: 9,
                ),
                Text(
                  '????????? ?????? ??????, ?????? ????????? ???????????????.',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 85, 85, 85),
                  ),
                ),
                SizedBox(
                  height: 9,
                ),
                Text(
                  '??? ?????? ???????????? ????????? ?????? ???????????????.',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 85, 85, 85),
                  ),
                ),
                SizedBox(
                  height: 9,
                ),
                Text(
                  '??? ????????? ????????? ????????? ?????????????????????.',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 85, 85, 85),
                  ),
                ),
              ],
            )),
        Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 200),
            child: Text.rich(TextSpan(
                text: "????????? ?? ?????????",
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 136, 127, 110),
                ),
                children: <TextSpan>[
                  TextSpan(
                      text: "??? ?????? ",
                      style: TextStyle(
                        fontSize: 17,
                        color: Color.fromARGB(255, 136, 127, 110),
                      )),
                  TextSpan(
                      text: " ??????",
                      style: TextStyle(
                        fontSize: 25,
                        color: Color.fromARGB(255, 85, 85, 85),
                      ))
                ]))),
        Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 10),
            child: Text.rich(TextSpan(
                text: "????????? ?? ?????????",
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 136, 127, 110),
                ),
                children: <TextSpan>[
                  TextSpan(
                      text: "??? ?????? ",
                      style: TextStyle(
                        fontSize: 17,
                        color: Color.fromARGB(255, 136, 127, 110),
                      )),
                  TextSpan(
                      text: " ??????",
                      style: TextStyle(
                        fontSize: 25,
                        color: Color.fromARGB(255, 85, 85, 85),
                      ))
                ]))),
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 80),
          child: Text(
            '2021. 10. 16. ????????? ?????? 1??? 10???',
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
            '?????????????????? 4??? ????????????',
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
