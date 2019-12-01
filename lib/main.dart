import 'package:know_law/screens/chat.dart';
import 'package:know_law/screens/cursos.dart';
import 'package:know_law/screens/detalhe.dart';
import 'package:know_law/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:know_law/screens/mais.dart';
import 'package:know_law/screens/progresso.dart';
import 'package:know_law/screens/recompensas.dart';

final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        CursosScreen.id: (context) => CursosScreen(),
        ProgressoScreen.id: (context) => ProgressoScreen(),
        RecompensasScreen.id: (context) => RecompensasScreen(),
        MaisScreen.id: (context) => MaisScreen(),
        DetalheScreen.id: (context) => DetalheScreen(),
        ChatScreen.id: (context) => ChatScreen(),
      },
    );
  }
}
