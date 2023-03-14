// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../models/FAQs.dart' as Faqs;
// import 'package:provider/provider.dart';

class FaqItem extends StatefulWidget {
  final Faqs.FAQs faq;
  FaqItem({required this.faq});

  @override
  State<FaqItem> createState() => _FaqItemState();
}

class _FaqItemState extends State<FaqItem> {
  bool _expanded = false;
  @override
  Widget build(BuildContext context) {
    // final item = Provider.of<FAQs>(context);
    SvgPicture up = SvgPicture.asset('assets/images/up.svg');
    SvgPicture down = SvgPicture.asset('assets/images/down.svg');
    return Container(
      // margin: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 8.0, bottom: 8.0),
            child: ListTile(
              title: Text(
                widget.faq.Question,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'OpenSansSemiBold',
                  fontWeight: FontWeight.w500,
                  color:
                      // Color(0x3f7ccd).withOpacity(1)
                      Theme.of(context).primaryColor,
                ),
              ),
              trailing: IconButton(
                padding: EdgeInsets.only(left: 20),
                iconSize: 12,
                color: Color(0x545454).withOpacity(1),
                icon: (_expanded ? up : down),
                onPressed: () {
                  setState(() {
                    _expanded = !_expanded;
                  });
                },
              ),
            ),
          ),
          if (_expanded)
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 24, bottom: 8, right: 28),
              child: Text(
                widget.faq.Answer,
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0x545454).withOpacity(1),
                  fontFamily: 'OpenSans',
                ),
              ),
            ),
          Divider(),
        ],
      ),
    );
  }
}
