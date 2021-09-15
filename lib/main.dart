import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mina_wonhee_wedding/view/WeddingCardPage.dart';
import 'dart:js' as js;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

// class MyApp extends StatefulWidget {
//   // Create the initialization Future outside of `build`:
//   @override
//   _MyAppState createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   final Future<FirebaseApp> _initialization = Firebase.initializeApp();
//
//   MaterialApp getMyApp() {
//     return MaterialApp(
//       title: 'Mina & Wonhee Wedding',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: WeddingCardPage(),
//     );
//   }
//
//   Widget getLoading() {
//     return Container();
//   }
//
//   Widget getErrorWidget() {
//     return Container();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//       // Initialize FlutterFire:
//       future: _initialization,
//       builder: (context, snapshot) {
//         // Check for errors
//         if (snapshot.hasError) {
//           return getErrorWidget();
//         }
//
//         // Once complete, show your application
//         if (snapshot.connectionState == ConnectionState.done) {
//           return getMyApp();
//         }
//
//         // Otherwise, show something whilst waiting for initialization to complete
//         return getLoading();
//       },
//     );
//   }
// }

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


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mina & Wonhee Wedding',
      theme: ThemeData(
        fontFamily: 'SingleDay',
        primarySwatch: Colors.blue,
      ),
      home: Text(PlatformJS().name + " : " + PlatformJS().version)
    );
  }
}


