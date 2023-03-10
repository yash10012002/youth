import 'package:flutter/material.dart';
import 'package:youth/models/agency.dart';
import 'package:youth/screens/FAQs.dart';
import 'package:youth/screens/about_ywi.dart';
import 'package:youth/screens/agency_detail_screen.dart';
import 'package:youth/screens/contact_us.dart';
import 'package:youth/screens/howitworks.dart';

import 'package:youth/screens/terms_of_use.dart';
import 'package:youth/screens/urgent_help.dart';
import 'screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const int _bluePrimaryValue = 0xFF3F7ccd;
    const MaterialColor ourblue = MaterialColor(
      _bluePrimaryValue,
      <int, Color>{
        50: Color(0xFFE3F2FD),
        100: Color(0xFFBBDEFB),
        200: Color(0xFF90CAF9),
        300: Color(0xFF64B5F6),
        400: Color(0xFF42A5F5),
        500: Color(_bluePrimaryValue),
        600: Color(0xFF1E88E5),
        700: Color(0xFF1976D2),
        800: Color(0xFF1565C0),
        900: Color(0xFF0D47A1),
      },
    );

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Agencies(),
          // child: child,
        ),
      ],
      child: Consumer(
        builder: (context, _, c) => MaterialApp(
          debugShowCheckedModeBanner: false,
          theme:
              ThemeData(primarySwatch: ourblue, fontFamily: 'OpenSansSemiBold'),
          home: HomeScreen(),
          routes: {
            HowItWorks.routeName: (ctx) => HowItWorks(),
            UrgentHelpScreen.routeName: (ctx) => UrgentHelpScreen(),
            AboutYWI.routeName: (ctx) => AboutYWI(),
            TermsOfUse.routeName: (ctx) => TermsOfUse(),
            ContactUs.routeName: (ctx) => ContactUs(),
            FAQsScreen.routeName: (ctx) => FAQsScreen(),
            AgencyDetailScreen.routeName: (ctx) => AgencyDetailScreen(),
          },
        ),
      ),
    );
  }
}
