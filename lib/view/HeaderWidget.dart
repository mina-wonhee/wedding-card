import 'package:flutter/material.dart';

import 'dart:js' as js;

class PlatformJS {
  String name = "";
  String version = "";

  PlatformJS() {
    var p = js.JsObject.fromBrowserObject(js.context['platform']);
    name = p['name'];
    version = p['version'];
  }

  bool isSafari15() {
    return name.toLowerCase() == "safari" &&
        int.parse(version.split(".")[0]) >= 15;
  }
}

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  _HeaderWidgetState createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double imageHeight = width * 1.2;

    // return Column(
    //   children: [
    //     Container(
    //       child: Image.asset('assets/images/resize20/12.jpg',
    //         fit: BoxFit.fitWidth,
    //       ),
    //     ),
    //     SizedBox(height: 35),
    //     Text(
    //       '10/16',
    //       textAlign: TextAlign.center,
    //       style: TextStyle(
    //         fontSize: 35,
    //         color: Colors.white,
    //         shadows: <Shadow>[
    //           Shadow(
    //             offset: Offset(2.0, 2.0),
    //             blurRadius: 3.0,
    //             color: Color.fromARGB(255, 0, 0, 0),
    //           ),
    //           Shadow(
    //             offset: Offset(2.0, 2.0),
    //             blurRadius: 8.0,
    //             color: Color.fromARGB(125, 0, 0, 255),
    //           ),
    //         ],
    //       ),
    //     ),
    //     SizedBox(height: 7),
    //     Text(
    //       '이원희 & 김민아',
    //       style: TextStyle(
    //         fontSize: 30,
    //         color: Colors.white,
    //         shadows: <Shadow>[
    //           Shadow(
    //             offset: Offset(2.0, 2.0),
    //             blurRadius: 3.0,
    //             color: Color.fromARGB(255, 0, 0, 0),
    //           ),
    //           Shadow(
    //             offset: Offset(2.0, 2.0),
    //             blurRadius: 8.0,
    //             color: Color.fromARGB(125, 0, 0, 255),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ],
    // );

    return Stack(
      children: [
        // Container(
        //   constraints: BoxConstraints(
        //       minHeight: width, minWidth: double.infinity),
        //   child: CachedNetworkImage(
        //     imageUrl: 'https://mina-wonhee.github.io/wedding-card/assets/assets/images/resize20/12.jpg',
        //     fit: BoxFit.fitWidth,
        //     // width: MediaQuery.of(context).size.width,
        //     placeholder: (context, url) => Center(
        //       child: SizedBox(
        //         width: 40.0,
        //         height: 40.0,
        //         child: new CircularProgressIndicator(),
        //       ),
        //     ),
        //     errorWidget: (context, url, error) => Icon(Icons.error),
        //   ),
        // ),

        Image.asset('assets/images/resize20/12.jpg',
          fit: BoxFit.fitWidth,
          width: MediaQuery.of(context).size.width,
        ),
        Positioned(
          top: imageHeight * 0.05,
          child: SizedBox(
            height: imageHeight,
            width: width,
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
                    Text(PlatformJS().name = ": " + PlatformJS().version),
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
      ],
    );
  }
}
