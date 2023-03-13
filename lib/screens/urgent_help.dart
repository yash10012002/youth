import 'package:flutter/material.dart';
import 'package:youth/models/urgent.dart';
import 'package:youth/widgets/appdrawer.dart';

import '../widgets/actionbutton.dart';
import '../widgets/drawericon.dart';
import '../widgets/urgent_item.dart';

class UrgentHelpScreen extends StatelessWidget {
  const UrgentHelpScreen({super.key});
  static const routeName = '/urgenthelp';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Urgent Help',
          style: TextStyle(fontFamily: 'OpenSansSemiBold'),
        ),
        leading: DrawerIcon(),
        centerTitle: true,
      ),
      drawer: AppDrawer(),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 20),
            child: Center(
              child: Text(
                'In case of urgent help, the following services will help you.',
                style: TextStyle(
                    fontSize: 14,
                    color: Color(0x545454).withOpacity(1),
                    fontFamily: 'OpenSans'),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return UrgentItem(
                    id: urgent[index].id,
                    title: urgent[index].title,
                    description: urgent[index].description,
                    email: urgent[index].email,
                    image: urgent[index].image,
                    phone: urgent[index].phone,
                    website: urgent[index].website);
              },
              itemCount: urgent.length,
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: ActionButton(),
    );
  }
}
