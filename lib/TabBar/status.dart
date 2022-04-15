import 'package:flutter/material.dart';

class StatusList extends StatelessWidget {
  const StatusList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3),
      child: GestureDetector(
        onTap: () {
          
        },
        child: ListTile(
          leading: CircleAvatar(backgroundImage: NetworkImage("https://c4.wallpaperflare.com/wallpaper/9/627/794/women-model-looking-away-crop-top-wallpaper-preview.jpg"),
          ),
          title: Text("Aishu"),
          subtitle: Text("Today, 10:00 AM"),
        ),
      ),
    );
  }
}