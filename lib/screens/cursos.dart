import 'package:flutter/material.dart';
import 'package:know_law/services/bottomppbar.dart';
import 'package:know_law/services/messages.dart';
import 'package:know_law/screens/cursos.dart';
import 'package:know_law/screens/progresso.dart';
import 'package:know_law/screens/recompensas.dart';
import 'package:know_law/screens/home.dart';
import 'package:know_law/services/topo.dart';

class CursosScreen extends StatefulWidget {
  static String id = 'cursos';

  @override
  _CursosScreenState createState() => _CursosScreenState();
}

class _CursosScreenState extends State<CursosScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topoTela(nomePagina: 'Trilha de conhecimento'),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      child: Image.asset(
                        'images/medal.png',
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
                  "8\nTrilhas\nCompletas",
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
              ],
            ),
            SizedBox(
              height: 8.0,
            ),
            Container(
              padding: EdgeInsets.only(left: 25.0, right: 25.0),
              color: Colors.black12,
              height: 45.0,
              child: Center(
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(right: 8.0),
                      child: Icon(
                        Icons.search,
                        color: Colors.black26,
                        size: 20.0,
                      ),
                    ),
                    Expanded(
                        child: TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Pesquisar',
                          hintStyle: TextStyle(color: Colors.black26)),
                      cursorColor: Theme.of(this.context).accentColor,
                      onChanged: (value) {
//                              _doSearch(value);
                      },
                    ))
                  ],
                ),
              ),
            ),
            MessageStream(colecao: 'cursos', campo: 'texto', titulo: 'nome'),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
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
                      Navigator.pushNamed(context, RecompensasScreen.id);
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
