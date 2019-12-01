import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final _firestore = Firestore.instance;

class ParceiroStream extends StatelessWidget {
  ParceiroStream({this.colecao});

  final String colecao;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: _firestore.collection(colecao).orderBy('parceiro').snapshots(),
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
          final messageValor = message.data['valor'].toString();
          final messageTitulo = message.data['curso'];
          final imagem = message.data['imagem'];
          final messageBubbles = MessageBubble(
              text: messageTitulo, valor: messageValor, imagem: imagem);
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
  MessageBubble({this.text, this.valor, this.imagem});

  final String text;
  final String valor;
  final String imagem;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Material(
          elevation: 5.0,
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      '$text',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Icon(Icons.favorite),
                  ],
                ),
                Image.asset(
                  imagem,
                  width: 200.0,
                  height: 200.0,
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: Material(
                        elevation: 5.0,
                        color: Colors.greenAccent,
                        borderRadius: BorderRadius.circular(30.0),
                        child: MaterialButton(
//                    onPressed: onPressed,
                          minWidth: 100.0,
                          height: 35.0,
                          child: Text(
                            "Resgatar",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Image.asset(
                      'images/money-bag.png',
                      width: 26.0,
                      height: 26.0,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      '$valor',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10.0,
        )
      ],
    );
  }
}
