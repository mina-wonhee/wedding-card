import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mina_wonhee_wedding/utils/Const.dart';

class MessageFormDialog extends StatefulWidget {
  @override
  _MessageFormDialogState createState() => _MessageFormDialogState();
}

class _MessageFormDialogState extends State<MessageFormDialog> {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  final nameController = TextEditingController();
  final pwController = TextEditingController();
  final msgController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    void writeCeleMessage() {
      if (_formKey.currentState!.validate()) {
        CollectionReference celeMessage = FirebaseFirestore.instance
            .collection(Const.CELE_MESSAGE_COLLECTION_NAME);

        celeMessage.add({
          Const.CELE_MESSAGE_DOC_NAME: nameController.text,
          Const.CELE_MESSAGE_DOC_PW: pwController.text,
          Const.CELE_MESSAGE_DOC_MESSAGE: msgController.text,
          Const.CELE_MESSAGE_DOC_CREATED: FieldValue.serverTimestamp(),
          Const.CELE_MESSAGE_DOC_UPDATED: FieldValue.serverTimestamp()
        });

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("축하메세지가 작성되었습니다."),
            duration: Duration(milliseconds: 600),
          ),
        );
        Navigator.of(context).pop();
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("입력을 완료해 주세요."),
            duration: Duration(milliseconds: 600),
          ),
        );
      }
    }

    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: SingleChildScrollView(
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
              children: <Widget>[
                Center(
                  child: Text(
                    "축하 메세지를 남겨주세요",
                    style: TextStyle(
                      fontSize: 27,
                      color: Color.fromARGB(255, 84, 84, 84),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                TextFormField(
                  obscureText: false,
                  controller: nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '이름',
                  ),
                  textInputAction: TextInputAction.next,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return '이름을 입력해 주세요.';
                    } else
                      return null;
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  obscureText: true,
                  controller: pwController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '비밀번호',
                  ),
                  textInputAction: TextInputAction.next,
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
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  obscureText: false,
                  controller: msgController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '축하 메세지',
                  ),
                  textInputAction: TextInputAction.done,
                  maxLines: 5,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return '축하 메세지를 입력해 주세요.';
                    } else
                      return null;
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: writeCeleMessage,
                    child: Text(
                      '축하 메세지 작성',
                      style: TextStyle(fontSize: 20),
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.only(left: 50, right: 50),
                      primary: Colors.brown, // background
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
