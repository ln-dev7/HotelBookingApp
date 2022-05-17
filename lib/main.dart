import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

const d_green = Color(0xFF54D3C2);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hotels Booking',
      home: HomePage(),
    );
  }
} 

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: d_green,
      appBar: MyAppBar(),
      body: Container(),
    );
  }
}

// Pour creer les AppBar
class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  Size get PreferredSize => new Size.fromHeight(50);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('Home'),
      backgroundColor: Colors.white,
    );
  }
}
