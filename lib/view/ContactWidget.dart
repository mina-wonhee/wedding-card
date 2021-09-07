import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'AccountWidget.dart';

class ContactWidget extends StatefulWidget {

  @override
  _ContactWidgetState createState() => _ContactWidgetState();
}

class _ContactWidgetState extends State<ContactWidget> {

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
            AccountWidget(),
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
