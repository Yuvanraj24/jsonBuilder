import 'package:dodo_demo_app/homefile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dodo Chats",
      theme: ThemeData(
        primarySwatch: Colors.orange
      ),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
