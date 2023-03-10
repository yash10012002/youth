import 'package:flutter/material.dart';

class Badge extends StatelessWidget {
  final Widget child;
  final Color color;
  Badge(this.child, this.color);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        child,
        Positioned(
          right: 8,
          top: 8,
          child: Container(
            padding: EdgeInsets.all(2.0),
            // color: Theme.of(context).accentColor,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.amber,
            ),
            constraints: BoxConstraints(
              minWidth: 16,
              minHeight: 16,
            ),
          ),
        )
      ],
    );
  }
}
