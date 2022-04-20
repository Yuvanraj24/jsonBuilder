import 'package:dodo_demo_app/user.dart';
import 'package:flutter/material.dart';

class JsonData extends StatefulWidget {
  const JsonData({Key? key}) : super(key: key);

  // const JsonData({Key? key}) : super(key: key);

  @override
  State<JsonData> createState() => _JsonDataState();
}

class _JsonDataState extends State<JsonData> {
  List <User>users = getUsers();
  static List<User> getUsers() {
    const data = [
      {
        "userName": "aishu",
        "email": "aishu2412@gmail.com",
        "dp":
            "https://cdn.mwallpapers.com/photos/celebrities/iswarya-menon/md/iswarya-menonhd-wallpapers-desktop-background-android-iphone-1080p-4k-ndmsm.jpg",
      },
      {
        "userName": "aishu",
        "email": "aishu2412@gmail.com",
        "dp":
            "https://cdn.mwallpapers.com/photos/celebrities/iswarya-menon/md/iswarya-menonhd-wallpapers-desktop-background-android-iphone-1080p-4k-ndmsm.jpg",
      }
    ];
    return data.map<User>(User.fromJson).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: buildUsers(users),
        ));
  }
}

buildUsers(List<User> users) => ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        final user = users[index];

        return ListTile(
          leading: CircleAvatar(
            radius: 28,
            backgroundImage: NetworkImage(user.dp),
          ),
          title: Text(user.userName),
          subtitle: Text(user.email),
          
        );
      },
    );
