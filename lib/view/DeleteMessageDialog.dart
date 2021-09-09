import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';
import 'package:mina_wonhee_wedding/utils/Const.dart';

class DeleteMessageDialog extends StatefulWidget {
  final String id;

  DeleteMessageDialog(this.id);

  @override
  _DeleteMessageDialogState createState() => _DeleteMessageDialogState();
}

class _DeleteMessageDialogState extends State<DeleteMessageDialog> {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  final pwController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  Future<void> delete() async {
    if (_formKey.currentState!.validate()) {
      var value = await FirebaseFirestore.instance.collection(Const.CELE_MESSAGE_COLLECTION_NAME).doc(widget.id).get();
      var pw = value.get(Const.CELE_MESSAGE_DOC_PW);

      var hash = utf8.encode(pwController.text);
      var shaPw = sha256.convert(hash).toString();

      if(pw == shaPw) {
        FirebaseFirestore.instance.collection(Const.CELE_MESSAGE_COLLECTION_NAME).doc(widget.id).delete().then((value){
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("메세지가 삭제되었습니다."),
              duration: Duration(milliseconds: 600),
            ),
          );
          Navigator.of(context).pop();
        });
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("비밀번호가 일치하지 않습니다."),
            duration: Duration(milliseconds: 600),
          ),
        );
        return;
      }

      return;
    }

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("옳바른 비밀번호를 입력해 주세요."),
        duration: Duration(milliseconds: 600),
      ),
    );
  }

  void cancel() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: Container(
        padding: EdgeInsets.only(left: 20, top: 20 + 20, right: 20, bottom: 20),
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                  color: Colors.black, offset: Offset(0, 10), blurRadius: 10),
            ]),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                obscureText: true,
                controller: pwController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '비밀번호',
                ),
                style: TextStyle(
                  fontSize: 20,
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return '비밀번호를 입력해 주세요.';
                  } else
                    return null;
                },
              ),
              SizedBox(height: 35,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: delete,
                    child: Text(
                      '삭제하기',
                      style: TextStyle(fontSize: 20),
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      primary: Colors.redAccent, // background
                    ),
                  ),
                  ElevatedButton(
                    onPressed: cancel,
                    child: Text(
                      '취소하기',
                      style: TextStyle(fontSize: 20),
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      primary: Colors.grey, // background
                    ),
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
