import 'package:flutter/material.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Note'),
      ),
      body: Center(
        child: Hero(
          tag: 'image_animation',
          child: Image.asset(
            'images/1.jpeg',
            width: 400,
            height: 300,),
        )
    )
    );
  }
}