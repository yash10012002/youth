import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youth/models/agency.dart';

import '../widgets/drawericon.dart';

class AgencyDetailScreen extends StatelessWidget {
  // final Agency agencyitem;
  AgencyDetailScreen({super.key});
  static const routeName = '/agency-detail';
  // final String title;

  @override
  Widget build(BuildContext context) {
    final AgencyItem = ModalRoute.of(context)?.settings.arguments as String;
    final loadedProduct = Provider.of<Agencies>(
      context,
      listen: false,
    ).findById(AgencyItem);
    return Scaffold(
      appBar: AppBar(
        title: Text(loadedProduct.title, style: TextStyle(fontFamily: 'OpenSansSemiBold'),),
        leading: DrawerIcon(),
        centerTitle: true,
      ),
      body: Center(
        child: Image.network(loadedProduct.image),
      ),
    );
  }
}
