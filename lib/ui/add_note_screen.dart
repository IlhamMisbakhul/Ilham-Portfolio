import 'package:flutter/material.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          IconButton(onPressed: (){}, icon: Icon(Icons.play_arrow))
        ],
      ),
    );
  }
}