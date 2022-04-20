import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';


const String _url = 'https://flutter.dev';

void main() => runApp(
      const MaterialApp(
        home: Material(
          child: Center(
            child: ElevatedButton(
              onPressed: _launchURL,
              child: Text('Show Flutter homepage'),
            ),
          ),
        ),
      ),
    );

void _launchURL() async {
  if (await launch(_url)) ;
}

/*import 'package:dodo_demo_app/data_picker/date_picker.dart';
import 'package:dodo_demo_app/homefile.dart';
import 'package:dodo_demo_app/web_view/webhomefile.dart';
import 'package:dodo_demo_app/widget_learn/animated_container.dart';
import 'package:dodo_demo_app/widget_learn/media_query.dart';
import 'package:dodo_demo_app/widget_learn/rich_text.dart';
import 'package:dodo_demo_app/widget_learn/text_field.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

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
      home: const TextFieldWidget(),
      debugShowCheckedModeBanner: false,
    );
  }
}
*/