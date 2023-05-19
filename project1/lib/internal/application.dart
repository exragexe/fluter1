import 'package:flutter/material.dart';
import 'package:project1/presentation/screens/home.dart';


class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        
        appBar: AppBar(title: const Text("Questionnaire"),
        backgroundColor: const Color.fromARGB(255, 128, 128, 128),
        leading: const Icon(Icons.person),
        actions: [
          IconButton(
            icon: const Icon(Icons.notification_important),
            onPressed: (){}),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: (){}),
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: (){}),
        ],),
        body: Home(),
        ),
      debugShowCheckedModeBanner: false,
      
      themeMode: ThemeMode.dark,
    );
  }
}