import 'package:flutter/material.dart';
import 'package:uibuils/ui/add_note_screen.dart';
import 'package:uibuils/ui/info_detail_screen.dart';
import 'package:uibuils/ui/pan_screen.dart';

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
      body: Center(
        child: Column(
          children: [
            InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AddNote()));
              },
              child: Center(
                child: Hero(
                  tag: 'image_animation',
                  child: Image.asset(
                    'images/1.jpeg',
                    width: 200,
                    height: 200,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const PanScreen(),));
              },
              child: const Text(
                'On Pan Update',
                style: TextStyle(
                  backgroundColor: Colors.green,
                  color: Colors.black
                ),
                ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        hoverColor: const Color.fromARGB(255, 189, 186, 186),
        foregroundColor: const Color.fromARGB(255, 0, 0, 0),
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
          label: 'Search'),
      ],),
    );
  }
}