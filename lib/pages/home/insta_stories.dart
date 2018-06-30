import 'package:flutter/material.dart';

class InstaStories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Stories",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Row(
                children: <Widget>[
                  Icon(Icons.play_arrow),
                  Text(
                    "Watch all",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
          Expanded(
            child: new Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 8,
                itemBuilder: (BuildContext context, int index) {
                  return Stack(
                    alignment: Alignment.bottomRight,
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 8.0),
                        height: 56.0,
                        width: 56.0,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
                          backgroundColor: Colors.grey[200],
                        ),
                      ),
                      index == 0
                          ? Positioned(
                              right: 10.0,
                              child: CircleAvatar(
                                backgroundColor: Colors.blueAccent,
                                radius: 10.0,
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 14.0,
                                ),
                              ),
                            )
                          : Container(),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
