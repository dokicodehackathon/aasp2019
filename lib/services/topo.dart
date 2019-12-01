import 'package:flutter/material.dart';

class topoTela extends StatelessWidget with PreferredSizeWidget {
  topoTela({this.nomePagina});

  final String nomePagina;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        nomePagina,
        style: TextStyle(
          color: Colors.black,
          fontSize: 15.0,
        ),
      ),
      backgroundColor: Colors.redAccent,
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
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
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50.0);
}
