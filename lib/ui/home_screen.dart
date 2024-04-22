import 'dart:js';

import 'package:flutter/material.dart';
import 'package:uibuils/ui/add_note_screen.dart';
import 'package:uibuils/ui/info_detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Note'),
        backgroundColor: Colors.amber,
        centerTitle: true,
        actions: [IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => InfoDetailScreen())
              );
          },
          icon: Icon(Icons.info))],

      ),
      body: Center(child: TextButton(onPressed: () {
        showDialog(
          context: context, 
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('ALERT!!!'),
              content: Text('Please Add Your New Note'),
              actions: <Widget>[
                TextButton(onPressed: (){
                  Navigator.of(context).pop();
                }, child: Text('Okay'))
              ],
            );
          });
      },
      child: Text('You have no note for today')),),
      drawer: Drawer(
        child: ListView(
          children: const[
            DrawerHeader(child: Text('Info')),
            EndDrawerButton(),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Account'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Account'),
            )],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        shape: CircleBorder(),
        onPressed: (){
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (context) => AddNote())
          );
      },
        child: Icon(Icons.add,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: BottomNavigationBar(items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home'),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search')
      ],),
    );
  }
}