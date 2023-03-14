import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(0xf79a30).withOpacity(1),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5))),
      child: Icon(
        CupertinoIcons.chat_bubble_2_fill,
        size: 40,
      ),
      onPressed: () {},
    );
  }
}
