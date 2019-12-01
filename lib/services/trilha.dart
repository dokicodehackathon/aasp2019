import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:know_law/screens/detalhe.dart';

final _firestore = Firestore.instance;

class TrilhaStream extends StatelessWidget {
  TrilhaStream({this.colecao});

  final String colecao;

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
          final messageValor = message.data['valor'].toString();
          final messageTitulo = message.data['titulo'];
          final messageTexto = message.data['texto'];
          final imagem = message.data['imagem'];
          final messageBubbles = MessageBubble(
            text: messageTexto,
            valor: messageValor,
            titulo: messageTitulo,
            imagem: imagem,
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
  MessageBubble({this.text, this.valor, this.titulo, this.imagem});

  final String text;
  final String valor;
  final String titulo;
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
                FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, DetalheScreen.id);
                  },
                  child: Row(
                    children: <Widget>[
                      Image.asset(
                        imagem,
                        width: 20.0,
                        height: 20.0,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        '$titulo',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.0),
                        child: Material(
                          elevation: (valor == "100") ? 5.0 : 0.0,
                          color: (valor == "100")
                              ? Colors.greenAccent
                              : Colors.white,
                          borderRadius: BorderRadius.circular(30.0),
                          child: MaterialButton(
//                    onPressed: onPressed,
                            minWidth: 100.0,
                            height: 35.0,
                            child: Text(
                              (valor == "100") ? "Concluido" : "",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    Flexible(
                      //We only want to wrap the text message with flexible widget
                      child: Container(
                        child: Text(
                          '$text',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text("$valor %"),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 20.0,
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Color(0xFF8D8E98),
                        overlayColor: Color(0x29EB1555),
                        thumbColor: Colors.black,
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30.0),
                      ),
                      child: Slider(
                        value: double.parse(valor),
                        min: 0.0,
                        max: 100.0,
                        onChanged: (double newValue) {
//                          setState(() {
//                            height = newValue.round();
//                          });
                        },
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
