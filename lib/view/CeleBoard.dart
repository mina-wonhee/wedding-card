import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mina_wonhee_wedding/utils/Const.dart';
import 'package:mina_wonhee_wedding/view/MessageItem.dart';

import 'MessageFormDialog.dart';

class CeleBoard extends StatefulWidget {
  const CeleBoard({Key? key}) : super(key: key);

  @override
  _CeleBoardState createState() => _CeleBoardState();
}

class _CeleBoardState extends State<CeleBoard> {
  final Stream<QuerySnapshot> _celeMessageStream = FirebaseFirestore.instance.collection(Const.CELE_MESSAGE_COLLECTION_NAME).orderBy(Const.CELE_MESSAGE_DOC_UPDATED, descending: true)
  // .snapshots(includeMetadataChanges: true);
      .snapshots();

  @override
  Widget build(BuildContext context) {
    return
      Material(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(top: 40),
          margin: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.1,
              right: MediaQuery.of(context).size.width * 0.1),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                '축하 인사를 남겨주세요.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  color: Color.fromARGB(255, 198, 152, 86),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top:30, bottom: 40),
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(context: context, builder: (BuildContext context) => MessageFormDialog());
                  },
                  child: Text('축하 메세지 작성', style: TextStyle(fontSize: 20),),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.only(left:50, right:50),
                    primary: Colors.brown, // background
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                child: StreamBuilder<QuerySnapshot>(
                  stream: _celeMessageStream,
                  builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (snapshot.hasError) {
                      return Text('Something went wrong');
                    }

                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Text("Loading");
                    }

                    return ListView.builder(
                        shrinkWrap: true,
                        itemCount: snapshot.data!.docs.length,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          var document = snapshot.data!.docs[index];
                          return MessageItem(
                              document.id,
                              document[Const.CELE_MESSAGE_DOC_NAME],
                              document[Const.CELE_MESSAGE_DOC_MESSAGE],
                              document[Const.CELE_MESSAGE_DOC_UPDATED] != null?
                              document[Const.CELE_MESSAGE_DOC_UPDATED]?.toDate() : DateTime.now(),
                          );
                        }
                    );
                    
                    // return Expanded(
                    //   child: Column(
                    //     children: snapshot.data!.docs.map((DocumentSnapshot document) {
                    //       return MessageItem(
                    //           document[Const.CELE_MESSAGE_DOC_NAME],
                    //           document[Const.CELE_MESSAGE_DOC_MESSAGE],
                    //           document[Const.CELE_MESSAGE_DOC_UPDATED] != null?
                    //           document[Const.CELE_MESSAGE_DOC_UPDATED]?.toDate() : DateTime.now()
                    //       );
                    //     }).toList(),
                    //   ),
                    // );

                    // return ListView(
                    //   children: snapshot.data!.docs.map((DocumentSnapshot document) {
                    //     debugPrint(document.toString());
                    //     return ListTile(
                    //       title: Text(document[Const.CELE_MESSAGE_DOC_NAME]),
                    //       subtitle: Text(document[Const.CELE_MESSAGE_DOC_MESSAGE]),
                    //     );
                    //   }).toList(),
                    // );
                  },
                ),
              ),
              SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      );
  }
}
