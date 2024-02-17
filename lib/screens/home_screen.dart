import 'dart:developer';

import 'package:flutter/material.dart';

import 'menu_fragment.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CoDex'),
        backgroundColor: Colors.orangeAccent,
      ),
      drawer: const SideMenuDrawer(),
      body: Container(
        color: Colors.grey,
        child: const Center(
          child: Text('This is the home screen'),
        ),
      ),
    );
  }
}


