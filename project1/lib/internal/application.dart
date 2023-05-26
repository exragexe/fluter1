import 'package:flutter/material.dart';
import 'package:project1/presentation/screens/anceta1.dart';
import 'package:project1/presentation/screens/anceta2.dart';
import 'package:project1/presentation/screens/home.dart';


class Application extends StatelessWidget {
  const Application({Key? key});

  @override
  Widget build(BuildContext context) {
    const CircularProgressIndicator(color: Colors.blueGrey,);
    
    return MaterialApp(
        
        initialRoute: '/',
        routes: {
          '/':(context) => const Home(),
          '/sec': (context) => const Anceta1(),
          '/thi': (context) => const Anceta2(),
        },
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.dark,
      );
    
  }
}