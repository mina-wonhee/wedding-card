import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mina_wonhee_wedding/model/Account.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'dart:js' as js;

List<Account> groomAccounts = [
  Account('아버지 계좌', '신한은행 (예금주 : 이의갑)', '602-04-015883', '60204015883'),
  Account('어머니 계좌', '신한은행 (예금주 : 김연숙)', '613-06-049930', '61306049930'),
  Account('신랑 계좌', '카카오뱅크 (예금주 : 이원희)', '3333-06-3095577', '3333063095577'),
];

List<Account> brideAccounts = [
  Account('아버지 계좌', 'NH농협 (예금주 : 김정일)', '302-0307-6889-41', '3020307688941'),
  Account('어머니 계좌', 'NH농협 (예금주 : 정원순)', '235094-56-008260', '23509456008260'),
  Account('신부 계좌', '카카오뱅크 (예금주 : 김민아)', '3333-15-2966088', '3333152966088'),
];

class AccountWidget extends StatefulWidget {
  @override
  _AccountWidgetState createState() => _AccountWidgetState();
}

class _AccountWidgetState extends State<AccountWidget> {
  bool _groomAccountExpanded = false;
  bool _brideAccountExpanded = false;

  void copyAccountValue(String accountValue) {
    if (kIsWeb) {
      js.context.callMethod('copyToClipboard', [accountValue]);
    } else {
      Clipboard.setData(ClipboardData(text: accountValue));
    }

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("$accountValue 복사되었습니다."),
        duration: Duration(milliseconds: 600),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '마음 전하실 곳',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 25,
            color: Color.fromARGB(255, 198, 152, 86),
          ),
        ),
        SizedBox(
          height: 25,
        ),
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
                            groomAccounts[0].name,
                            style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 85, 85, 85),
                            ),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            groomAccounts[0].description,
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
                                groomAccounts[0].formattedNumberString,
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 85, 85, 85),
                                ),
                                textAlign: TextAlign.start,
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  copyAccountValue(
                                      groomAccounts[0].numberString);
                                },
                                child: Text(
                                  '복사하기',
                                  style: TextStyle(fontSize: 15),
                                ),
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
                            groomAccounts[1].name,
                            style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 85, 85, 85),
                            ),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            groomAccounts[1].description,
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
                                groomAccounts[1].formattedNumberString,
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 85, 85, 85),
                                ),
                                textAlign: TextAlign.start,
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  copyAccountValue(
                                      groomAccounts[1].numberString);
                                },
                                child: Text(
                                  '복사하기',
                                  style: TextStyle(fontSize: 15),
                                ),
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
                            groomAccounts[2].name,
                            style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 85, 85, 85),
                            ),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            groomAccounts[2].description,
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
                                groomAccounts[2].formattedNumberString,
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
                                      copyAccountValue(
                                          groomAccounts[2].numberString);
                                    },
                                    child: Text(
                                      '복사하기',
                                      style: TextStyle(fontSize: 15),
                                    ),
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
                                        String url =
                                            "https://qr.kakaopay.com/281006011188452691004605";
                                        await canLaunch(url)
                                            ? await launch(url)
                                            : throw 'Could not launch $url';
                                      },
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        child: Image.asset(
                                            'assets/images/kakaopay.png'),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        padding:
                                            EdgeInsets.only(left: 0, right: 0),
                                        shape: new RoundedRectangleBorder(
                                          borderRadius:
                                              new BorderRadius.circular(10.0),
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
        SizedBox(
          height: 15,
        ),
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
                            brideAccounts[0].name,
                            style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 85, 85, 85),
                            ),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            brideAccounts[0].description,
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
                                brideAccounts[0].formattedNumberString,
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 85, 85, 85),
                                ),
                                textAlign: TextAlign.start,
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  copyAccountValue(
                                      brideAccounts[0].numberString);
                                },
                                child: Text(
                                  '복사하기',
                                  style: TextStyle(fontSize: 15),
                                ),
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
                            brideAccounts[1].name,
                            style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 85, 85, 85),
                            ),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            brideAccounts[1].description,
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
                                brideAccounts[1].formattedNumberString,
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 85, 85, 85),
                                ),
                                textAlign: TextAlign.start,
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  copyAccountValue(
                                      brideAccounts[1].numberString);
                                },
                                child: Text(
                                  '복사하기',
                                  style: TextStyle(fontSize: 15),
                                ),
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
                            brideAccounts[2].name,
                            style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 85, 85, 85),
                            ),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            brideAccounts[2].description,
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
                                brideAccounts[2].formattedNumberString,
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
                                      copyAccountValue(
                                          brideAccounts[2].numberString);
                                    },
                                    child: Text(
                                      '복사하기',
                                      style: TextStyle(fontSize: 15),
                                    ),
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
                                        String url =
                                            "https://qr.kakaopay.com/281006011189849511006206";
                                        await canLaunch(url)
                                            ? await launch(url)
                                            : throw 'Could not launch $url';
                                      },
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        child: Image.asset(
                                            'assets/images/kakaopay.png'),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        padding:
                                            EdgeInsets.only(left: 0, right: 0),
                                        shape: new RoundedRectangleBorder(
                                          borderRadius:
                                              new BorderRadius.circular(10.0),
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
      ],
    );
  }
}
