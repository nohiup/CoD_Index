import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('CoDex'),
      ),
      body: Container(
        color: Colors.grey,
        child: const Center(
          child: Text('This is the home screen'),
        ),
      ),
    );
  }
}