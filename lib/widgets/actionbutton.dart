import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
          backgroundColor: Colors.amber.shade800,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Icon(
            CupertinoIcons.chat_bubble_2_fill,
            size: 40,
          ),
          onPressed: () {},
        );
  }
}