/*import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewHome extends StatefulWidget {
  const WebViewHome({Key? key}) : super(key: key);

  @override
  State<WebViewHome> createState() => _WebViewHomeState();
}

class _WebViewHomeState extends State<WebViewHome> {
  late WebViewController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Web View"),
        actions: [
          IconButton(
              onPressed: () async {
                controller.loadUrl("https://www.youtube.com");
              },
              icon: Icon(Icons.auto_fix_high))
        ],
      ),
      body: WebView(
        javascriptMode: JavascriptMode.unrestricted,
        initialUrl: 'https://www.amazon.com',
        onWebViewCreated: (controller) {
          this.controller = controller;
        },
      ),
    );
  }
}
*/

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewExample extends StatefulWidget {
  const WebViewExample({Key? key}) : super(key: key);

  @override
  WebViewExampleState createState() => WebViewExampleState();
}

class WebViewExampleState extends State<WebViewExample> {
  @override
  void initState() {
    super.initState();
    // Enable virtual display.
    // if (Platform.isWindows) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  height: size.height *18,
                  child: const WebView(
                    javascriptMode: JavascriptMode.disabled,
                    initialUrl: 'https://google.com',
                    allowsInlineMediaPlayback: true,
                  ),
                ),
                Container(
                  height: 500,
                  child: const WebView(
                    javascriptMode: JavascriptMode.disabled,
                    initialUrl: 'https://taskbytes.com',
                    allowsInlineMediaPlayback: true,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
