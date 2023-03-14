import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youth/widgets/actionbutton.dart';

import '../widgets/appdrawer.dart';
import '../widgets/drawericon.dart';

class HowItWorks extends StatelessWidget {
  const HowItWorks({super.key});
  static const routeName = '/howitworks';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'How It Works',
          style: TextStyle(fontFamily: 'OpenSansSemiBold'),
        ),
        leading: DrawerIcon(),
        centerTitle: true,
      ),
      drawer: AppDrawer(),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Title 1',
                style: TextStyle(fontFamily: 'OpenSansSemiBold', fontSize: 22),
              ),
              Text(
                "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.",
                style: TextStyle(fontSize: 16, fontFamily: 'OpenSans'),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Title 2',
                style: TextStyle(fontFamily: 'OpenSansSemiBold', fontSize: 22),
              ),
              Text(
                "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr.",
                style: TextStyle(fontSize: 16, fontFamily: 'OpenSans'),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Title 2',
                style: TextStyle(fontFamily: 'OpenSansSemiBold', fontSize: 22),
              ),
              Text(
                "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr.",
                style: TextStyle(fontSize: 16, fontFamily: 'OpenSans'),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: ActionButton(),
    );
  }
}
