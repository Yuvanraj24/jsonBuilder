import 'package:flutter/material.dart';

class AnimatedContainerWidget extends StatefulWidget {
  const AnimatedContainerWidget({Key? key}) : super(key: key);

  @override
  State<AnimatedContainerWidget> createState() =>
      _AnimatedContainerWidgetState();
}

class _AnimatedContainerWidgetState extends State<AnimatedContainerWidget> {
  bool selectChange = false;

  bool tapChange = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Container"),
      ),
      body: Center(
        child: Column(
          children: [

            //1
            AnimatedContainer(
              duration: Duration(seconds: 5),
              curve: Curves.easeIn,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                //color: Colors.red,
                
                ),

              child: tapChange ? ElevatedButton(onPressed: () {
                setState(() {
                  tapChange = !tapChange;
                });
              }, child: Text("Click"),
              ) : IconButton(
                
                onPressed: () {
                setState(() {
                  tapChange = !tapChange;
                });
              }, icon: Icon(Icons.alarm)),
            ),

            SizedBox(height: 20,),
            //2
            GestureDetector(
              onTap: () {
                setState(() {
                  selectChange = !selectChange;
                });
              },
              child: AnimatedContainer(
                  
                  duration: Duration(seconds: 5),
                  width: selectChange ? 200 : 400,
                  height: selectChange ? 600 : 200,
                  curve: Curves.fastOutSlowIn,
                  decoration: BoxDecoration(
                    color: selectChange ? Color.fromRGBO(41, 84, 119, 1) : Color.fromARGB(255, 193, 119, 9),
                    borderRadius:BorderRadius.all(Radius.circular(25)) ),
                  child: Image.network(
                "https://c4.wallpaperflare.com/wallpaper/474/430/502/game-of-thrones-daenerys-targaryen-wallpaper-preview.jpg",

              )),
            ),
            
          ],
        ),
      ),
    );
  }
}
