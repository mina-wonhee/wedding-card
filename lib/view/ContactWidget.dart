import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactWidget extends StatefulWidget {
  const ContactWidget({Key? key}) : super(key: key);

  @override
  _ContactWidgetState createState() => _ContactWidgetState();
}

class _ContactWidgetState extends State<ContactWidget> {
  bool _groomAccountExpanded = false;
  bool _brideAccountExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        margin: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.1,
            right: MediaQuery.of(context).size.width * 0.1),
        child: Column(
          children: [
            SizedBox(height: 70,),
            Text(
              '마음 전하실 곳',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                color: Color.fromARGB(255, 198, 152, 86),
              ),
            ),
            SizedBox(height: 25,),
            ExpansionPanelList(
              animationDuration: Duration(milliseconds: 500),
              children: [
                ExpansionPanel(
                  headerBuilder: (context, isExpanded) {
                    return ListTile(
                      title: Text(
                        '신랑측 계좌번호',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 85, 85, 85),
                        ),
                      ),
                    );
                  },
                  body: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                '아버지 계좌',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 85, 85, 85),
                                ),
                                textAlign: TextAlign.start,
                              ),
                              Text(
                                '신한은행 (예금주 : 이의갑)',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 85, 85, 85),
                                ),
                                textAlign: TextAlign.start,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '602-04-015883',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromARGB(255, 85, 85, 85),
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      Clipboard.setData(ClipboardData(text: "60204015883"));
                                      ScaffoldMessenger.of(context).showSnackBar( SnackBar( content: Text("60204015883 복사되었습니다."), duration: Duration(milliseconds: 600), ), );
                                    },
                                    child: Text('복사하기', style: TextStyle(fontSize: 15),),
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.brown, // background
                                    ),
                                  ),
                                ],
                              ),
                              Divider(
                                thickness: 1,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                '어머니 계좌',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 85, 85, 85),
                                ),
                                textAlign: TextAlign.start,
                              ),
                              Text(
                                '신한은행 (예금주 : 김연숙)',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 85, 85, 85),
                                ),
                                textAlign: TextAlign.start,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '613-06-049930',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromARGB(255, 85, 85, 85),
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      Clipboard.setData(ClipboardData(text: "61306049930"));
                                      ScaffoldMessenger.of(context).showSnackBar( SnackBar( content: Text("61306049930 복사되었습니다."), duration: Duration(milliseconds: 600), ), );
                                    },
                                    child: Text('복사하기', style: TextStyle(fontSize: 15),),
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.brown, // background
                                    ),
                                  ),
                                ],
                              ),
                              Divider(
                                thickness: 1,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                '신랑 계좌',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 85, 85, 85),
                                ),
                                textAlign: TextAlign.start,
                              ),
                              Text(
                                '카카오뱅크 (예금주 : 이원희)',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 85, 85, 85),
                                ),
                                textAlign: TextAlign.start,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '3333-06-3095577',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromARGB(255, 85, 85, 85),
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                  Row(
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {
                                          Clipboard.setData(ClipboardData(text: "3333063095577"));
                                          ScaffoldMessenger.of(context).showSnackBar( SnackBar( content: Text("3333063095577 복사되었습니다."), duration: Duration(milliseconds: 600), ), );
                                        },
                                        child: Text('복사하기', style: TextStyle(fontSize: 15),),
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.brown, // background
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      SizedBox(
                                        height: 20,
                                        width: 50,
                                        child: ElevatedButton(
                                          onPressed: () async {
                                            String url = "https://qr.kakaopay.com/281006011188452691004605";
                                            await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';
                                          },
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(10.0),
                                            child: Image.asset('assets/images/kakaopay.png'),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            padding: EdgeInsets.only(left: 0, right: 0),
                                            shape: new RoundedRectangleBorder(
                                              borderRadius: new BorderRadius.circular(10.0),
                                            ),
                                            primary: Colors.transparent,
                                            onPrimary: Colors.transparent,
                                            shadowColor: Colors.transparent,
                                          ),
                                        ),
                                      )

                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  isExpanded: _groomAccountExpanded,
                  canTapOnHeader: true,
                ),
              ],
              dividerColor: Colors.grey,
              expansionCallback: (panelIndex, isExpanded) {
                _groomAccountExpanded = !_groomAccountExpanded;
                setState(() {});
              },
            ),
            SizedBox(height: 15,),
            ExpansionPanelList(
              animationDuration: Duration(milliseconds: 500),
              children: [
                ExpansionPanel(
                  headerBuilder: (context, isExpanded) {
                    return ListTile(
                      title: Text(
                        '신부측 계좌번호',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 85, 85, 85),
                        ),
                      ),
                    );
                  },
                  body: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                '아버지 계좌',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 85, 85, 85),
                                ),
                                textAlign: TextAlign.start,
                              ),
                              Text(
                                'NH농협 (예금주 : 김정일)',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 85, 85, 85),
                                ),
                                textAlign: TextAlign.start,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '302-0307-6889-41',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromARGB(255, 85, 85, 85),
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      Clipboard.setData(ClipboardData(text: "3020307688941"));
                                      ScaffoldMessenger.of(context).showSnackBar( SnackBar( content: Text("3020307688941 복사되었습니다."), duration: Duration(milliseconds: 600), ), );
                                    },
                                    child: Text('복사하기', style: TextStyle(fontSize: 15),),
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.brown, // background
                                    ),
                                  ),
                                ],
                              ),
                              Divider(
                                thickness: 1,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                '어머니 계좌',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 85, 85, 85),
                                ),
                                textAlign: TextAlign.start,
                              ),
                              Text(
                                'NH농협 (예금주 : 정원순)',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 85, 85, 85),
                                ),
                                textAlign: TextAlign.start,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '235094-56-008260',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromARGB(255, 85, 85, 85),
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      Clipboard.setData(ClipboardData(text: "23509456008260"));
                                      ScaffoldMessenger.of(context).showSnackBar( SnackBar( content: Text("23509456008260 복사되었습니다."), duration: Duration(milliseconds: 600), ), );
                                    },
                                    child: Text('복사하기', style: TextStyle(fontSize: 15),),
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.brown, // background
                                    ),
                                  ),
                                ],
                              ),
                              Divider(
                                thickness: 1,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                '신부 계좌',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 85, 85, 85),
                                ),
                                textAlign: TextAlign.start,
                              ),
                              Text(
                                '카카오뱅크 (예금주 : 김민아)',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 85, 85, 85),
                                ),
                                textAlign: TextAlign.start,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '3333-15-2966088',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromARGB(255, 85, 85, 85),
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                  Row(
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {
                                          Clipboard.setData(ClipboardData(text: "3333152966088"));
                                          ScaffoldMessenger.of(context).showSnackBar( SnackBar( content: Text("3333152966088 복사되었습니다."), duration: Duration(milliseconds: 600), ), );
                                        },
                                        child: Text('복사하기', style: TextStyle(fontSize: 15),),
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.brown, // background
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      SizedBox(
                                        height: 20,
                                        width: 50,
                                        child: ElevatedButton(
                                          onPressed: () async {
                                            String url = "https://qr.kakaopay.com/281006011189849511006206";
                                            await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';
                                          },
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(10.0),
                                            child: Image.asset('assets/images/kakaopay.png'),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            padding: EdgeInsets.only(left: 0, right: 0),
                                            shape: new RoundedRectangleBorder(
                                              borderRadius: new BorderRadius.circular(10.0),
                                            ),
                                            primary: Colors.transparent,
                                            onPrimary: Colors.transparent,
                                            shadowColor: Colors.transparent,
                                          ),
                                        ),
                                      )

                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  isExpanded: _brideAccountExpanded,
                  canTapOnHeader: true,
                ),
              ],
              dividerColor: Colors.grey,
              expansionCallback: (panelIndex, isExpanded) {
                _brideAccountExpanded = !_brideAccountExpanded;
                setState(() {});
              },
            ),
            SizedBox(height: 80,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text.rich(TextSpan(
                        text: "신랑",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 136, 127, 110),
                        ),
                        children: <TextSpan> [
                          TextSpan(
                              text: " 이원희",
                              style: TextStyle(
                                fontSize: 22,
                                color: Color.fromARGB(255, 85, 85, 85),
                              )),
                        ]
                    )),
                    Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () async {
                            String phoneUrl = "tel:01030725514";
                            await canLaunch(phoneUrl) ? await launch(phoneUrl) : throw 'Could not launch $phoneUrl';
                          },
                          icon: Icon(Icons.call),
                          color: Colors.black87,
                          iconSize: 25,
                        ),
                        IconButton(
                          onPressed: () async {
                            String phoneUrl = "sms:01030725514";
                            await canLaunch(phoneUrl) ? await launch(phoneUrl) : throw 'Could not launch $phoneUrl';
                          },
                          icon: Icon(Icons.mail),
                          color: Colors.black87,
                          iconSize: 25,
                        )
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    Text.rich(TextSpan(
                        text: "신부",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 136, 127, 110),
                        ),
                        children: <TextSpan> [
                          TextSpan(
                              text: " 김민아",
                              style: TextStyle(
                                fontSize: 22,
                                color: Color.fromARGB(255, 85, 85, 85),
                              )),
                        ]
                    )),
                    Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () async {
                            String phoneUrl = "tel:01092531756";
                            await canLaunch(phoneUrl) ? await launch(phoneUrl) : throw 'Could not launch $phoneUrl';
                          },
                          icon: Icon(Icons.call),
                          color: Colors.black87,
                          iconSize: 25,
                        ),
                        IconButton(
                          onPressed: () async {
                            String phoneUrl = "sms:01092531756";
                            await canLaunch(phoneUrl) ? await launch(phoneUrl) : throw 'Could not launch $phoneUrl';
                          },
                          icon: Icon(Icons.mail),
                          color: Colors.black87,
                          iconSize: 25,
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: 100,),
            Text(
              '혼주에게 연락하기',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                color: Color.fromARGB(255, 85, 85, 85),
              ),
            ),
            SizedBox(height: 80,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IntrinsicWidth(
                  child: Column(
                    children: [
                      Text(
                        '신랑측 혼주',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 85, 85, 85),
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                IntrinsicWidth(
                  child: Column(
                    children: [
                      Text(
                        '신부측 혼주',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 85, 85, 85),
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text.rich(TextSpan(
                        text: "아버지",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 136, 127, 110),
                        ),
                        children: <TextSpan> [
                          TextSpan(
                              text: " 이의갑",
                              style: TextStyle(
                                fontSize: 22,
                                color: Color.fromARGB(255, 85, 85, 85),
                              )),
                        ]
                    )),
                    Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () async {
                            String phoneUrl = "tel:01023545514";
                            await canLaunch(phoneUrl) ? await launch(phoneUrl) : throw 'Could not launch $phoneUrl';
                          },
                          icon: Icon(Icons.call),
                          color: Colors.black87,
                          iconSize: 25,
                        ),
                        IconButton(
                          onPressed: () async {
                            String phoneUrl = "sms:01023545514";
                            await canLaunch(phoneUrl) ? await launch(phoneUrl) : throw 'Could not launch $phoneUrl';
                          },
                          icon: Icon(Icons.mail),
                          color: Colors.black87,
                          iconSize: 25,
                        )
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    Text.rich(TextSpan(
                        text: "아버지",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 136, 127, 110),
                        ),
                        children: <TextSpan> [
                          TextSpan(
                              text: " 김정일",
                              style: TextStyle(
                                fontSize: 22,
                                color: Color.fromARGB(255, 85, 85, 85),
                              )),
                        ]
                    )),
                    Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () async {
                            String phoneUrl = "tel:01096631756";
                            await canLaunch(phoneUrl) ? await launch(phoneUrl) : throw 'Could not launch $phoneUrl';
                          },
                          icon: Icon(Icons.call),
                          color: Colors.black87,
                          iconSize: 25,
                        ),
                        IconButton(
                          onPressed: () async {
                            String phoneUrl = "sms:01096631756";
                            await canLaunch(phoneUrl) ? await launch(phoneUrl) : throw 'Could not launch $phoneUrl';
                          },
                          icon: Icon(Icons.mail),
                          color: Colors.black87,
                          iconSize: 25,
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text.rich(TextSpan(
                        text: "어머니",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 136, 127, 110),
                        ),
                        children: <TextSpan> [
                          TextSpan(
                              text: " 김연숙",
                              style: TextStyle(
                                fontSize: 22,
                                color: Color.fromARGB(255, 85, 85, 85),
                              )),
                        ]
                    )),
                    Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () async {
                            String phoneUrl = "tel:01081845514";
                            await canLaunch(phoneUrl) ? await launch(phoneUrl) : throw 'Could not launch $phoneUrl';
                          },
                          icon: Icon(Icons.call),
                          color: Colors.black87,
                          iconSize: 25,
                        ),
                        IconButton(
                          onPressed: () async {
                            String phoneUrl = "sms:01081845514";
                            await canLaunch(phoneUrl) ? await launch(phoneUrl) : throw 'Could not launch $phoneUrl';
                          },
                          icon: Icon(Icons.mail),
                          color: Colors.black87,
                          iconSize: 25,
                        )
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    Text.rich(TextSpan(
                        text: "어머니",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 136, 127, 110),
                        ),
                        children: <TextSpan> [
                          TextSpan(
                              text: " 정원순",
                              style: TextStyle(
                                fontSize: 22,
                                color: Color.fromARGB(255, 85, 85, 85),
                              )),
                        ]
                    )),
                    Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () async {
                            String phoneUrl = "tel:01089901756";
                            await canLaunch(phoneUrl) ? await launch(phoneUrl) : throw 'Could not launch $phoneUrl';
                          },
                          icon: Icon(Icons.call),
                          color: Colors.black87,
                          iconSize: 25,
                        ),
                        IconButton(
                          onPressed: () async {
                            String phoneUrl = "sms:01089901756";
                            await canLaunch(phoneUrl) ? await launch(phoneUrl) : throw 'Could not launch $phoneUrl';
                          },
                          icon: Icon(Icons.mail),
                          color: Colors.black87,
                          iconSize: 25,
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 80,
            )
          ],
        ),
      ),
    );

  }
}
