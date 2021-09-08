import 'package:flutter/material.dart';
import 'package:mina_wonhee_wedding/view/HeaderWidget.dart';
import 'package:mina_wonhee_wedding/view/LetterWidget.dart';

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

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            HeaderWidget(),
            LetterWidget(),
            AlbumWidget(),
            SizedBox(
              height: 200,
            ),
            DdayCalendarWidget(),
            MapWidget(),
            ContactWidget(),
            CeleBoard(),
          ],
        ),
      )
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
