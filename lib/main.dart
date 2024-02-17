import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:youtube_audio/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'CoDex',
      home: HomeScreen(),
    );
  }
}
