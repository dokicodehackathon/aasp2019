import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final _firestore = Firestore.instance;

class MessageStream extends StatelessWidget {
  MessageStream({this.colecao, this.campo, this.titulo});

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
              text: messageText, sender: "", titulo: messageTitulo);

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
          Text(
            sender,
            style: TextStyle(
              fontSize: 12.0,
              color: Colors.black54,
            ),
          ),
          Material(
            elevation: 5.0,
            color: Colors.white,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '$titulo',
                    style: TextStyle(
                      fontSize: 28.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Image.asset('images/empreend.png'),
                  Text(
                    '$text',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black54,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.favorite),
                      SizedBox(
                        width: 10.0,
                      ),
                      Image.asset(
                        'images/ladder.png',
                        width: 26.0,
                        height: 26.0,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text("5 módulos"),
                      SizedBox(
                        width: 50.0,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                        child: Material(
                          elevation: 5.0,
                          color: Colors.greenAccent,
                          borderRadius: BorderRadius.circular(30.0),
                          child: MaterialButton(
//                    onPressed: onPressed,
                            minWidth: 110.0,
                            height: 42.0,
                            child: Text(
                              "Iniciar",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
