import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' hide Badge;
import 'package:provider/provider.dart';
// import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:youth/models/agency.dart';
import 'package:youth/models/article.dart';
import 'package:youth/screens/agency_tab.dart';
import 'package:youth/screens/article_tab.dart';
import 'package:youth/widgets/actionbutton.dart';
import 'package:youth/widgets/agency_item.dart';
import 'package:badges/badges.dart';
import '../widgets/appdrawer.dart';
import '../widgets/article_item.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/drawericon.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  List<String> titles = <String>[
    'Agency',
    'Articles',
  ];

// emergency is the function that return the container for display the label.
// it is used in TabBarview(). it takes two strings title and subtitle.
  Widget _emergency(String title, String subtitle) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(color: Color(0x3f7ccd).withOpacity(0.1)),
      // margin: EdgeInsets.all(10),
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontFamily: 'OpenSansSemiBold',
                    fontWeight: FontWeight.w500),
                // textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                subtitle,
                style: TextStyle(
                    fontSize: 14, color: Color(0x292929).withOpacity(1)),
                // textAlign: TextAlign.left,
              ),
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            child: Center(
                child: Icon(
              CupertinoIcons.right_chevron,
              size: 18,
              color: Color(0x3f7ccd).withOpacity(1),
            )),
          )
        ],
      ),
    );
  }

  // Widget DrawerIcon() {
  //   return Builder(
  //     builder: (context) => IconButton(
  //       icon: Image.asset(
  //         'assets/images/More.png',
  //         height: 20,
  //         width: 22,
  //       ),
  //       onPressed: () {
  //         Scaffold.of(context).openDrawer();
  //       },
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    const int tabsCount = 2;
    final Size screenSize = MediaQuery.of(context).size;
    final bool isSmallScreen = screenSize.width < 600;
    return DefaultTabController(
      initialIndex: 0,
      length: tabsCount,
      child: Scaffold(
        appBar: AppBar(
          leading: DrawerIcon(),
          // Builder(
          //   builder: (context) => IconButton(
          //     icon: isSmallScreen
          //         ? Image.asset(
          //             'assets/images/More.png',
          //             height: 20,
          //             width: 22,
          //           )
          //         : Image.asset('assets/images/More@3x.png'),
          //     onPressed: () {
          //       Scaffold.of(context).openDrawer();
          //     },
          //   ),
          // )
          centerTitle: true,
          title: Text(
            'Home',
            style: TextStyle(fontFamily: 'OpenSansSemiBold'),
          ),
          actions: [
            // Badge(
            //   position: BadgePosition.topEnd(top: -8, end: -5),
            //   badgeContent: null,
            //   badgeStyle: BadgeStyle(badgeColor: Colors.amber),
            // ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/images/fi.svg',
                height: 20,
                width: 18,
              ),
            )
          ],
          scrolledUnderElevation: 5.0,
          shadowColor: Theme.of(context).shadowColor,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: TabBar(
              labelStyle:
                  TextStyle(fontFamily: 'OpenSansSemiBold', fontSize: 18),
              tabs: <Widget>[
                Tab(
                  text: titles[0],
                ),
                Tab(
                  text: titles[1],
                ),
              ],
            ),
          ),
        ),
        drawer: AppDrawer(),
        body: TabBarView(
          children: [
            Column(
              children: [
                //_emergency is the functions which is made outside of the build
                //which is return the specific part of the design.
                _emergency("Do you need any help or emergency?",
                    "Check out some agencies that can help you."),
                AgencyTab(), // this is return list of agency item.
              ],
            ),
            Column(
              children: [
                _emergency("Are you in an emergency?",
                    "Check out some agencies that can help you"),
                ArticleTab(), // this return list of articles.
              ],
            ),
          ],
        ),
        // to display floating action button call actionbutton(), which is in widget folder.
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton:
            ActionButton(), // return the floting action button.
      ),
    );
  }
}
