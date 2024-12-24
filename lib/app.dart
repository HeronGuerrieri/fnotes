import 'package:f_notes/ui/core/themes/themes.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FNotes',
      theme: ThemeData(
        colorScheme: MaterialTheme.lightScheme(),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('FNotes'),
        ),
        body: const Center(
          child: Text('Welcome to FNotes'),
        ),
      )
    );
  }
}
