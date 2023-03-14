import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youth/models/FAQs.dart';
import 'package:youth/widgets/appdrawer.dart';

import '../widgets/actionbutton.dart';
import '../widgets/drawericon.dart';
import '../widgets/faq_item.dart';

class FAQsScreen extends StatefulWidget {
  static const routeName = '/FaqsScreen';
  @override
  _FAQsScreenState createState() => _FAQsScreenState();
}

class _FAQsScreenState extends State<FAQsScreen> {
  List<FAQs> _items = faqs;
  // [
  //   Item_FAQ(
  //     headerValue:
  //         'The question will be shown here. Upon clicking it, the answer will be shown.',
  //     expandedValue:
  //         'Lorem ipsum is a dummy text. This will be replaced with the actual text. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat.',
  //   ),
  //   Item_FAQ(
  //     headerValue:
  //         'The next question will be shown here.Upon clicking it, the answer will be shown.',
  //     expandedValue:
  //         'Lorem ipsum is a dummy text. This will be replaced with the actual text. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat.',
  //   ),
  //   // Item(
  //   //   headerValue: 'Item 3',
  //   //   expandedValue: 'Details of item 3',
  //   // ),
  // ];
  // int _selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: ActionButton(),
      drawer: AppDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'FAQs',
          style: TextStyle(fontFamily: 'OpenSansSemiBold'),
        ),
        leading: DrawerIcon(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: _items
              .map((FAQs item) => FaqItem(
                    faq: item,
                  ))
              .toList(),
        ),
      ),
    );
  }

  // Container(
  //         // margin: EdgeInsets.all(10),
  //         child: ExpansionPanelList(
  //           expansionCallback: (int index, bool isExpanded) {
  //             setState(() {
  //               _items[index].isExpanded = !isExpanded;
  //               // _selectedIndex = isExpanded ? -1 : index;
  //             });
  //           },
  //           children: _items.map((FAQs item) {
  //             return ExpansionPanel(
  //               headerBuilder: (BuildContext context, bool isExpanded) {
  //                 return ListTile(
  //                   minVerticalPadding: 20,
  //                   title: Text(
  //                     item.Question,
  //                     textAlign: TextAlign.start,
  //                     style: TextStyle(
  //                       color: Theme.of(context).primaryColor,
  //                       fontWeight: FontWeight.bold,
  //                       fontSize: 16,
  //                     ),
  //                   ),
  //                 );
  //               },
  //               body: Padding(
  //                 padding: EdgeInsets.all(10.0),
  //                 child: Text(
  //                   item.Answer,
  //                   textAlign: TextAlign.justify,
  //                   style: TextStyle(color: Colors.black, fontSize: 14),
  //                 ),
  //               ),
  //               isExpanded: item.isExpanded,
  //             );
  //           }).toList(),
  //         ),
  //       ),
}
