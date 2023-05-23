import 'package:flutter/material.dart';
import 'package:project1/presentation/screens/home.dart';


class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor:  Color.fromARGB(255, 109, 119, 177),
        
        body: Home(),
          
        ),
      debugShowCheckedModeBanner: false,
      
      themeMode: ThemeMode.dark,
    );
  }
}