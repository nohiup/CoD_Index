import 'package:flutter/material.dart';
import 'package:youtube_audio/screens/home_screen.dart';

class SideMenuDrawer extends StatelessWidget{
  const SideMenuDrawer({Key? key}): super(key: key);
  Widget build(BuildContext context) => Drawer(
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          buildHeader(context),
          buildMenuItems(context),
        ],
      ),
    ),
  );

 Widget buildHeader(BuildContext context) => Container(
   color: Colors.orangeAccent,
   child: Container(
     padding: EdgeInsets.only(
       top: MediaQuery.of(context).padding.top,
     ),
    child: const Center(
      child: Text(
          'CoDex',
          style: TextStyle(
            fontSize: 20,
          ),
      ),
    ),
   ),

 );
 Widget buildMenuItems(BuildContext context) => Container(
   padding: const EdgeInsets.fromLTRB(0, 24, 0, 0),
   child: Wrap(
     runSpacing: 10,
     children: [
       ListTile(
         leading: const Icon(Icons.home_outlined),
         title: const Text('Home'),
         onTap:() {
           Navigator.of(context).pushReplacement(
             PageRouteBuilder(pageBuilder: (BuildContext context,
                 Animation<double> animation,
                 Animation<double> secondaryAnimation) {
               return SlideTransition(position: Tween<Offset>(
                 begin: const Offset(1.0, 0.0),
                 end: Offset.zero,
                ).animate(animation),
                 child: HomeScreen(),);
                }
              ),
            );  //pushReplacement
          },  //OnTap
        ),
      ],  //children
   ),
 );
}

