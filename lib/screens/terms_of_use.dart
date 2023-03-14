import 'package:flutter/material.dart';
import 'package:youth/widgets/actionbutton.dart';

import '../widgets/appdrawer.dart';
import '../widgets/drawericon.dart';

class TermsOfUse extends StatelessWidget {
  const TermsOfUse({super.key});
  static const routeName = '/termsofuse';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Terms Of Use',
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
            children: [
              Text(
                "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.",
                style: TextStyle(
                    fontFamily: 'OpenSans',
                    color: Color(0x545454).withOpacity(1),
                    fontSize: 14),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.",
                style: TextStyle(
                    fontFamily: 'OpenSans',
                    color: Color(0x545454).withOpacity(1),
                    fontSize: 14),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.",
                style: TextStyle(
                    fontFamily: 'OpenSans',
                    color: Color(0x545454).withOpacity(1),
                    fontSize: 14),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod.",
                style: TextStyle(
                    fontFamily: 'OpenSans',
                    color: Color(0x545454).withOpacity(1),
                    fontSize: 14),
              ),
              SizedBox(
                height: 30,
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
