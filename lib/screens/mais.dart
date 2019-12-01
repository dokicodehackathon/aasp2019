import 'package:flutter/material.dart';
import 'package:know_law/services/bottomppbar.dart';
import 'package:know_law/services/messages.dart';

class MaisScreen extends StatefulWidget {
  static String id = 'mais';

  @override
  _MaisScreenState createState() => _MaisScreenState();
}

class _MaisScreenState extends State<MaisScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Progresso'),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        actions: <Widget>[
          CircleAvatar(
            child: ClipOval(
              child: Image.network(
                'https://scontent-gru2-2.xx.fbcdn.net/v/t1.0-1/p40x40/64449332_2721331774563110_2820441453472251904_n.jpg?_nc_cat=100&_nc_ohc=NwlRsTk2q5IAQkh6bNAFOGWnawPsc8WZyqqYDmp8218L88KPwPDz7CQmQ&_nc_ht=scontent-gru2-2.xx&oh=b4fbd28b2bf88c8d4f665ccee72f57ab&oe=5E7ADE8E',
              ),
            ),
            backgroundColor: Colors.transparent,
            radius: 30.0,
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            MessageStream(
              colecao: 'cursos',
              campo: 'nome',
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: bottomBar(),
      ),
    );
  }
}
