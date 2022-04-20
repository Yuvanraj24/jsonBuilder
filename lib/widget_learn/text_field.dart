import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({Key? key}) : super(key: key);

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  final storeUserId = TextEditingController();
  String password = '';
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                controller: storeUserId,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "UserId",
                  hintText: "Yuvanraj",
                  icon: Icon(Icons.people),
                  prefix: Icon(Icons.person),
                  suffix: IconButton(
                      onPressed: () {
                        storeUserId.clear();
                      },
                      icon: Icon(Icons.close)),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    this.password = value;
                  });
                },
                onSubmitted: (value) {
                  setState(() {
                    this.password = value;
                  });
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Password",
                    icon: Icon(Icons.lock),
                    //prefix: Icon(Icons.password),
                    errorText: "Password is wrong",
                    suffix: IconButton(
                      onPressed: () {
                        setState(() {
                          isPasswordVisible = !isPasswordVisible;
                        });
                      },
                      icon: isPasswordVisible
                          ? Icon(Icons.visibility_off)
                          : Icon(Icons.visibility),
                    )),
                obscureText: isPasswordVisible,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print("UserId : ${storeUserId.text}");
                print("Password : $password");
              },
              child: Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
