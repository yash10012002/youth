import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/agency.dart';
import '../widgets/agency_item.dart';

class AgencyTab extends StatefulWidget {
  const AgencyTab({super.key});

  @override
  State<AgencyTab> createState() => _AgencyTabState();
}

class _AgencyTabState extends State<AgencyTab> {
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    loadData();
  }

  void loadData() async {
    // Simulate loading data for 3 seconds
    await Future.delayed(Duration(seconds: 2));

    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final agencyData = Provider.of<Agencies>(context);
    final agencies = agencyData.items;
    return Expanded(
      child: Padding(
        padding:
            const EdgeInsets.only(top: 22, right: 10, bottom: 10, left: 10),
        child: isLoading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemBuilder: (context, index) => ChangeNotifierProvider.value(
                  value: agencies[index],
                  child: Agency_Item(
                    id: agencies[index].id,
                    image: agencies[index].image,
                    title: agencies[index].title,
                    image2: agencies[index].image2,
                    url: agencies[index].url,
                  ),
                ),
                itemCount: agencies.length,
              ),
      ),
    );
  }
}
