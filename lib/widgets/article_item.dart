import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:avatar_view/avatar_view.dart';
import 'dart:ui' as ui;

class Article_Item extends StatelessWidget {
  final String id;
  final String title;
  final String image;

  const Article_Item({
    required this.id,
    required this.title,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: GestureDetector(
        child: Container(
          // padding: EdgeInsets.all(5.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  image,
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
              // SizedBox(width: 16.0),
              Container(
                // alignment: Alignment.centerLeft,
                // margin: EdgeInsets.only(left: 10),
                height: 100,
                width: MediaQuery.of(context).size.width * 0.6,
                child: Padding(
                  padding: EdgeInsets.only(left: 10, top: 30, bottom: 30),
                  child: Text(
                    title,
                    style: TextStyle(
                      color: Color(0x3e3e3e).withOpacity(1),
                      fontWeight: FontWeight.w500,
                      fontFamily: 'OpensansSemiBold',
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
