import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mina_wonhee_wedding/view/DeleteMessageDialog.dart';

class MessageItem extends StatefulWidget {
  late final String id;
  late final String name;
  late final String message;
  late final DateTime date;
  late final String dateString;

  static const String DATE_TIME_FORMAT = "yyyy년 MM월 dd일 HH:mm";

  MessageItem(String id, String name, String message, DateTime date) {
    this.id = id;
    this.name = name;
    this.message = message;
    this.date = date;
    dateString = DateFormat(DATE_TIME_FORMAT).format(date).toString();
  }


  // MessageItem(this.name, this.message, this.date);

  @override
  _MessageItemState createState() => _MessageItemState();
}

class _MessageItemState extends State<MessageItem> {
  late String _dateString;
  static const String DATE_TIME_FORMAT = "yyyy년 MM월 dd일 HH:mm";


  // @override
  // void initState() {
  //   super.initState();
  //   _dateString = DateFormat(DATE_TIME_FORMAT).format(widget.date).toString();
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.white,
          borderRadius: BorderRadius.circular(13),
          boxShadow: [
            BoxShadow(
                color: Colors.black54, offset: Offset(0, 6), blurRadius: 10),
          ]),
      child: Material(
        child: Container(
          padding: EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 10),

          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    widget.name,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    widget.message,
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 84, 84, 84),
                    ),
                  ),
                  Text(
                    widget.dateString,
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // IconButton(onPressed: () {}, icon: Icon(Icons.border_color)),
                  IconButton(
                      onPressed: () {
                        showDialog(context: context, builder: (BuildContext context) => DeleteMessageDialog(widget.id));
                      },
                      iconSize: 20,
                      icon: Icon(Icons.delete)
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
