import 'package:dodo_demo_app/homefile.dart';
import 'package:flutter/material.dart';

class ChatsList extends StatelessWidget {
  
  final String name,text,imageUrl,time;

  ChatsList({
     required this.name,
     required this.imageUrl,
     required this.text,
     required this.time

  });


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeScreen(),
              ));
        },
        child: ListTile(
          title: Text(name),
          subtitle: Text(text),
          trailing: Text(time),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(imageUrl),
          ),
        ),
      ),
    );
  }
}
