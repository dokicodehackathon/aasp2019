import 'package:flutter/material.dart';
import 'package:know_law/screens/chat.dart';
import 'package:know_law/services/bottomppbar.dart';
import 'package:know_law/services/messages.dart';
import 'package:know_law/services/parceiros.dart';
import 'package:know_law/services/topo.dart';
import 'package:know_law/screens/cursos.dart';
import 'package:know_law/screens/progresso.dart';
import 'package:know_law/screens/home.dart';

class DetalheScreen extends StatefulWidget {
  static String id = 'detalhe';

  @override
  _DetalheScreenState createState() => _DetalheScreenState();
}

class _DetalheScreenState extends State<DetalheScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topoTela(nomePagina: 'Detalhes da trilha de conhecimento'),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 25.0, right: 25.0),
              color: Colors.white,
              height: 45.0,
              child: Center(
                child: Row(
                  children: <Widget>[
                    Image.asset(
                      'images/data-science.png',
                      width: 20.0,
                      height: 20.0,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "Data Science Voltado ao Direito",
                      style: TextStyle(
                        fontSize: 15.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      child: Image.asset(
                        'images/ladder.png',
                        width: 26.0,
                        height: 26.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "80\nModulos\nCompletos",
                  style: TextStyle(
                    fontSize: 11.0,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(
                  width: 30.0,
                ),
                Column(
                  children: <Widget>[
                    Container(
                      child: Image.asset(
                        'images/money-bag.png',
                        width: 26.0,
                        height: 26.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "20\nKnow-law\ncoins",
                  style: TextStyle(
                    fontSize: 11.0,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(
                  width: 30.0,
                ),
                Column(
                  children: <Widget>[
                    Container(
                      child: Image.asset(
                        'images/growth.png',
                        width: 26.0,
                        height: 26.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "50 %\nconcluída",
                  style: TextStyle(
                    fontSize: 11.0,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 8.0,
            ),
            Image.asset('images/detalhe.png'),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Material(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text("Ranking"),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text("Nome"),
                      SizedBox(
                        width: 40.0,
                      ),
                      Text("Pontuação"),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text("Contato"),
                      SizedBox(
                        width: 20.0,
                      ),
                    ],
                  ),
                ),
                Material(
                  elevation: 5.0,
                  color: Colors.white,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              '1',
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              'Matheus Augusto',
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.black54,
                              ),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text(
                              '45%',
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.black54,
                              ),
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            FlatButton(
                              onPressed: () {
                                Navigator.pushNamed(context, ChatScreen.id);
                              },
                              child: Icon(Icons.chat),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Material(
                  elevation: 5.0,
                  color: Colors.white,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              '2',
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              'Rogerio Ferreira',
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.black54,
                              ),
                            ),
                            SizedBox(
                              width: 32.0,
                            ),
                            Text(
                              '30%',
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.black54,
                              ),
                            ),
                            SizedBox(
                              width: 45.0,
                            ),
                            Icon(Icons.chat),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Material(
                  elevation: 5.0,
                  color: Colors.white,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              '3',
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              'Larissa Ferreira',
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.black54,
                              ),
                            ),
                            SizedBox(
                              width: 35.0,
                            ),
                            Text(
                              '51%',
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.black54,
                              ),
                            ),
                            SizedBox(
                              width: 45.0,
                            ),
                            Icon(Icons.chat),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 150.0,
                )
              ],
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      FlatButton(
                        onPressed: () {
                          Navigator.pushNamed(context, HomeScreen.id);
                        },
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              'images/home.png',
                              width: 24.0,
                              height: 24.0,
                            ),
                            Text(
                              "Inicio",
                              style: TextStyle(
                                fontSize: 10.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      FlatButton(
                        onPressed: () {
                          Navigator.pushNamed(context, CursosScreen.id);
                        },
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              'images/mountain-route.png',
                              width: 24.0,
                              height: 24.0,
                            ),
                            Text(
                              "Trilhas de",
                              style: TextStyle(
                                fontSize: 10.0,
                              ),
                            ),
                            Text(
                              "conhecimento",
                              style: TextStyle(
                                fontSize: 10.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      FlatButton(
                        onPressed: () {
                          Navigator.pushNamed(context, ProgressoScreen.id);
                        },
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              'images/report.png',
                              width: 24.0,
                              height: 24.0,
                            ),
                            Text(
                              "Progresso",
                              style: TextStyle(
                                fontSize: 10.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      FlatButton(
                        onPressed: () {
                          Navigator.pushNamed(context, DetalheScreen.id);
                        },
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              'images/present.png',
                              width: 24.0,
                              height: 24.0,
                            ),
                            Text(
                              "Recompensas",
                              style: TextStyle(
                                fontSize: 10.0,
                              ),
                            ),
                          ],
                        ),
                      ),
//                    FlatButton(
//                      child: Column(
//                        children: <Widget>[
//                          Image.asset(
//                            'images/raster.png',
//                            width: 20.0,
//                            height: 20.0,
//                          ),
//                          Text(
//                            "Mais",
//                            style: TextStyle(
//                              fontSize: 8.0,
//                            ),
//                          ),
//                        ],
//                      ),
//                    ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
//      bottomNavigationBar: BottomAppBar(
//        child: bottomBar(),
//      ),
    );
  }
}
