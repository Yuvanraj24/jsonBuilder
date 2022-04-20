import 'package:flutter/material.dart';

class AlertBox extends StatelessWidget {
  const AlertBox({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actionsAlignment: MainAxisAlignment.end,
      actionsPadding: EdgeInsets.all(2),
      title: Text("Accept"),
      content: Text("Do U Accept"),
      actions: [
        TextButton(child: Text("Yes"),onPressed: (){

        }),
        TextButton(child: Text("No"),onPressed: (){
          
        }),
      ],
      
    );
  }
}