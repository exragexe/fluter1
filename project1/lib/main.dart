import 'package:flutter/material.dart';
import 'package:project1/internal/application.dart';
import 'package:project1/presentation/screens/anceta1.dart';
import 'package:project1/presentation/screens/anceta2.dart';
import 'package:project1/presentation/screens/home.dart';


void main() {
  runApp(const Application());
}
class MainApp extends StatelessWidget {
  const MainApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      initialRoute: '/',
      routes: {
        '/':(context)=> const Home(),
        '/sec':(context) => const Anceta1(),
        '/thi':(context) =>  const Anceta2(),

      },
    );
  }
}

