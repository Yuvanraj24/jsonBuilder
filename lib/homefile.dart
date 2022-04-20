import 'package:dodo_demo_app/json_sample.dart';
import 'package:flutter/material.dart';

import 'builder/chatbuilder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
       appBar: AppBar(
          leading: const Padding(
            padding: EdgeInsets.only(left: 10,top: 15),
            child: Text("Dodo",
                   style: TextStyle(
                     color: Colors.black,
                     fontWeight: FontWeight.bold,
                     fontSize: 16
                   ),
        ),
          ),
          actions: [IconButton(onPressed: () {
            
          }, icon: Icon(Icons.search)),
    
                    PopupMenuButton(itemBuilder: (context) => [
                      PopupMenuItem(child: ListTile(leading: Icon(Icons.newspaper),
                      title: Text("New Group"),
                      )),
                       PopupMenuItem(child: ListTile(leading: Icon(Icons.people),
                      title: Text("Add Friends"),
                      )),
                       PopupMenuItem(child: ListTile(leading: Icon(Icons.code),
                      title: Text("QR Code"),
                      )),
                       PopupMenuItem(child: ListTile(leading: Icon(Icons.settings),
                      title: Text("Settings"),
                      )),
                    ],),
          ],
          bottom: const TabBar(tabs: [
            Tab(icon: Icon(Icons.camera_alt)),
            Tab(text: "CHATS"),
            Tab(text: "STATUS"),
            Tab(text: "CALLs")
          ]),
       ),
       body:  TabBarView(children: [
          Icon(Icons.camera_alt),
            ChatBuilder(),
            JsonData(),
             Icon(Icons.camera_alt),
       ],)
      
      ),
    );
  }
}