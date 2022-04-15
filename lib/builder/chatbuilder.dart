import 'package:dodo_demo_app/Constructors/chats_constructor.dart';
import 'package:dodo_demo_app/TabBar/chats.dart';
import 'package:dodo_demo_app/data_strore/datas_passing.dart';
import 'package:flutter/material.dart';

class ChatBuilder extends StatefulWidget {
  @override
  State<ChatBuilder> createState() => _ChatBuilderState();
}

class _ChatBuilderState extends State<ChatBuilder> {
  List<ChatConstructor> toAccess = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    toAccess = storeData();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: toAccess.length,
      itemBuilder: (context, index) {
        return ChatsList(
          name: toAccess[index].name,
          imageUrl: toAccess[index].imageUrl,
          text: toAccess[index].subtext,
          time: toAccess[index].time,
        );
      },
    );
  }
}
