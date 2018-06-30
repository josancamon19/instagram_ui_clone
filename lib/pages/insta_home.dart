import 'package:flutter/material.dart';
import 'package:instagram_clone/pages/home/insta_list.dart';

class InstaHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Flexible(
          child: InstaList(),
        )
      ],
    );
  }
}
