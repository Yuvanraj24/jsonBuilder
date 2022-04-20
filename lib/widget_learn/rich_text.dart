import 'package:flutter/material.dart';

class RichTextWidget extends StatelessWidget {
  const RichTextWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        title: Text("Rich-Text Widget"),
      ),
      body: Center(
        child: RichText(
  text: TextSpan(
    text: 'Hello..!',
    style: TextStyle(color: Colors.black,
    backgroundColor: Colors.red,
    fontSize: 30,
    letterSpacing: 20.0,
    fontStyle: FontStyle.italic,
    wordSpacing: 20.0),

    children: const <TextSpan>[
        TextSpan(text: '\nMy', style: TextStyle(fontWeight: FontWeight.bold)),
        TextSpan(text: '\nworld!'),
    ],
  ),
  maxLines: 3,
  overflow: TextOverflow.clip,
  softWrap: false,
  textAlign: TextAlign.center,
  textDirection: TextDirection.rtl,
  textWidthBasis: TextWidthBasis.longestLine,
  textHeightBehavior: TextHeightBehavior(leadingDistribution: TextLeadingDistribution.proportional),
),
      )
    );
  }
}