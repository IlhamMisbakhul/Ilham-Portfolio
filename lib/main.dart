import 'package:flutter/material.dart';
import 'package:uibuils/ui/home_screen.dart';

void main(){
  runApp(NoteApp());
  
}
class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Note App',
      home:HomeScreen(),
    );
  }
}