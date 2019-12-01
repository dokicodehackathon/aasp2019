import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final _firestore = Firestore.instance;

class PesquisaStream extends StatelessWidget {
  PesquisaStream({this.colecao, this.campo, this.titulo});

  final String colecao;
  final String campo;
  final String titulo;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: _firestore.collection(colecao).snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Center(
            child: CircularProgressIndicator(
              backgroundColor: Colors.lightBlueAccent,
            ),
          );
        }
        final messages = snapshot.data.documents.reversed;
        List<MessageBubble> messageWidgets = [];
        for (var message in messages) {
          final messageText = message.data[campo];
          final messageTitulo = message.data[titulo];

          final messageBubbles = MessageBubble(
            text: messageText,
            sender: "",
            titulo: messageTitulo,
          );

          messageWidgets.add(messageBubbles);
        }
        return Expanded(
          child: ListView(
            reverse: false,
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
            children: messageWidgets,
          ),
        );
      },
    );
  }
}

class MessageBubble extends StatelessWidget {
  MessageBubble({this.sender, this.text, this.titulo});

  final String sender;
  final String text;
  final String titulo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Material(
//            elevation: 5.0,
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Text(
                  '$titulo',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '$text',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black54,
                  ),
                ),
                Material(
                  color: Colors.black,
                  elevation: 5.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
