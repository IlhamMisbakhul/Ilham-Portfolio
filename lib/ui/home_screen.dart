import 'package:flutter/material.dart';
import 'package:uibuils/ui/add_note_screen.dart';
import 'package:uibuils/ui/info_detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Note'),
        backgroundColor: const Color.fromARGB(255, 1, 105, 190),
        centerTitle: true,
        actions: [IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const InfoDetailScreen())
              );
          },
          icon: const Icon(Icons.info))],

      ),
      body: Center(child: TextButton(onPressed: () {
        showDialog(
          context: context, 
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('ALERT!!!'),
              content: const Text('Please Add Your New Note'),
              actions: <Widget>[
                TextButton(onPressed: (){
                  Navigator.of(context).pop();
                }, child: const Text('Okay'))
              ],
            );
          });
      },
      child: const Text('You have no note add the new one')),),
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
              leading: Icon(Icons.note_alt_rounded),
              title: Text('Note'),
            )],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        foregroundColor: Color.fromARGB(255, 0, 0, 0),
        shape: const CircleBorder(),
        onPressed: (){
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (context) => const AddNote())
          );
      },
        child: const Icon(Icons.add,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: BottomNavigationBar(items: const <BottomNavigationBarItem>[
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