import 'package:flutter/material.dart';
import 'package:instagram_clone/pages/insta_home.dart';

class Home extends StatelessWidget {
  final appbar = new AppBar(
    backgroundColor: Color(0xfff8faf8),
    centerTitle: true,
    elevation: 1.0,
    leading: IconButton(
      onPressed: () => debugPrint("camera touched"),
      icon: Icon(Icons.camera_alt),
    ),
    title: SizedBox(
      height: 35.0,
      child: new Image.asset("assets/images/instagram_logo.png"),
    ),
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.send),
        onPressed: () => debugPrint("send pressed"),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar,
      body: InstaHome(),
      bottomNavigationBar: Container(
        height: 50.0,
        color: Colors.white,
        child: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.home),
                onPressed: () => debugPrint("home pressed"),
              ),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: null,
              ),
              IconButton(
                icon: Icon(Icons.add_box),
                onPressed: null,
              ),
              IconButton(
                icon: Icon(Icons.favorite),
                onPressed: null,
              ),
              IconButton(
                icon: Icon(Icons.account_box),
                onPressed: null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
