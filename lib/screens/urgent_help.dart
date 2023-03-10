import 'package:flutter/material.dart';
import 'package:youth/models/urgent.dart';
import 'package:youth/widgets/appdrawer.dart';

import '../widgets/actionbutton.dart';
import '../widgets/urgent_item.dart';

class UrgentHelpScreen extends StatelessWidget {
  const UrgentHelpScreen({super.key});
  static const routeName = '/urgenthelp';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Urgent Help'),
      ),
      drawer: AppDrawer(),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'In case of urgent help, the following services will help you.',
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
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
