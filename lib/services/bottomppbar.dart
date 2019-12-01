import 'package:flutter/material.dart';
import 'package:know_law/screens/cursos.dart';
import 'package:know_law/screens/home.dart';
import 'package:know_law/screens/mais.dart';
import 'package:know_law/screens/progresso.dart';
import 'package:know_law/screens/recompensas.dart';

class bottomButton extends StatelessWidget {
  bottomButton(
      {@required this.icon, @required this.onPressed, @required this.text});

  final String text;
  final Function onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Row(
//        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Icon(icon),
              Flexible(
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: 10.0,
                    color: Colors.black54,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      onPressed: onPressed,
    );
//      GestureDetector(
//      onTap: onPressed,
//      child: Container(
//        child: Center(
//          child: Text(
//            text,
////      style: kLargeButtonStyle,
//          ),
//        ),
////    color: kBottomContainerColour,
//        margin: EdgeInsets.only(top: 10.0),
//        padding: EdgeInsets.only(bottom: 20.0),
////        width: double.infinity,
////    height: kBottomContainerHeight,);
//      ),
//    );

//    return FloatingActionButton(
//      heroTag: text,
//      onPressed: onPressed,
//      child: Column(
//        mainAxisAlignment: MainAxisAlignment.center,
//        children: <Widget>[
//          IconButton(
//            icon: Icon(icon),
//            onPressed: onPressed,
//          ),
//          Text(text),
//        ],
//      ),
//    );
  }
}

class bottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> botoes = [];
    botoes.add(
      bottomButton(
          icon: Icons.home,
          onPressed: () {
            Navigator.pushNamed(context, HomeScreen.id);
          },
          text: 'Início'),
    );

    botoes.add(
      bottomButton(
          icon: Icons.import_contacts,
          onPressed: () {
            Navigator.pushNamed(context, CursosScreen.id);
          },
          text: 'Trilha de conhecimento'),
    );
    botoes.add(
      bottomButton(
          icon: Icons.attach_money,
          onPressed: () {
            Navigator.pushNamed(context, ProgressoScreen.id);
          },
          text: 'Progresso'),
    );
//    botoes.add(
//      bottomButton(
//          icon: Icons.assignment_ind,
//          onPressed: () {
//            Navigator.pushNamed(context, RecompensasScreen.id);
//          },
//          text: 'Recompensas'),
//    );
//    botoes.add(
//      bottomButton(
//          icon: Icons.menu,
//          onPressed: () {
//            Navigator.pushNamed(context, MaisScreen.id);
//          },
//          text: 'Mais'),
//    );
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: botoes,
    );
  }
}
