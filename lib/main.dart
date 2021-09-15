import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mina_wonhee_wedding/view/WeddingCardPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
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
      home: WeddingCardPage(),
    );
  }
}


