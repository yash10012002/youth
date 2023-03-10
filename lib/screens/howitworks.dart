import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youth/widgets/actionbutton.dart';

import '../widgets/appdrawer.dart';

class HowItWorks extends StatelessWidget {
  const HowItWorks({super.key});
  static const routeName = '/howitworks';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('How It Works'),
      ),
      drawer: AppDrawer(),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Text(
          "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.",
          style: TextStyle(fontSize: 18),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: ActionButton(),
    );
  }
}
