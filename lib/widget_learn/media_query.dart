import 'dart:ffi';

import 'package:flutter/material.dart';

class MediaQueryWidget extends StatefulWidget {
  const MediaQueryWidget({Key? key}) : super(key: key);

  @override
  State<MediaQueryWidget> createState() => _MediaQueryWidgetState();
}

class _MediaQueryWidgetState extends State<MediaQueryWidget> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    var pad = MediaQuery.of(context).padding;
    var orientation = MediaQuery.of(context).orientation;
    var a = MediaQuery.of(context).highContrast;

    bool isMobile(BuildContext) => screenWidth <= 600;
    bool isDeskTop(BuildContext) => screenWidth > 600;

    return Scaffold(
      appBar: AppBar(
        title: Text("MediaQuery Widget"),
      ),
      body: Row(
        children: [
          if(isDeskTop(context))
          Container(
            height: 2000,
            width: 200,
            color: Colors.green,
          ),
          Container(
            // padding: pad * 10,
            // height: screenHeight,
            // width: screenWidth,

            color: Color.fromARGB(255, 50, 47, 47),
            child: Image.network(
              "https://c4.wallpaperflare.com/wallpaper/474/430/502/game-of-thrones-daenerys-targaryen-wallpaper-preview.jpg",
            ),
            //Text("$size"),
          ),
        ],
      ),
    );
  }
}
