import 'package:flutter/material.dart';
import 'dart:io';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Project Zero',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final String githubRepoLink = "https://github.com/kr3a7ion/hngzerorepo.git";

  const HomeScreen({super.key});

  void openURL(String url) {
    Process.run('xdg-open', [url]);
    Process.run('open', [url]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Project Zero',
            style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: ElevatedButton(
          style:
              ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.teal)),
          onPressed: () => openURL(githubRepoLink),
          child: Text(
            'Open Gitrepo link',
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
