import 'package:cached_network_image/cached_network_image.dart';
import 'package:dodo_demo_app/homefile.dart';
import 'package:flutter/material.dart';

class ChatsList extends StatefulWidget {
  
  final String name, text, imageUrl, time;

  ChatsList(
      {required this.name,
      required this.imageUrl,
      required this.text,
      required this.time});

  @override
  State<ChatsList> createState() => _ChatsListState();
}

class _ChatsListState extends State<ChatsList> {

  bool isChecked = false; //variable for Checkbox Widget

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
          title: Text(widget.name),
          subtitle: Text(widget.text),

          //Using Checkbox widget
          trailing: Checkbox(
            activeColor: Colors.orange,
            autofocus: false,
            onChanged: (bool? value) {
              setState(() {
                isChecked = value!;
              });
            },
            value: isChecked,
          ),
          leading: CachedNetworkImage(imageUrl: widget.imageUrl),
          
        ),
      ),
    );
  }
}
