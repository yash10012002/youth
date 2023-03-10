import 'package:avatar_view/avatar_view.dart';
import 'package:flutter/material.dart';
import 'package:youth/screens/FAQs.dart';
import 'package:youth/screens/about_ywi.dart';
import 'package:youth/screens/contact_us.dart';
import 'package:youth/screens/howitworks.dart';
import 'package:youth/screens/terms_of_use.dart';
import 'package:youth/screens/urgent_help.dart';

class AppDrawer extends StatefulWidget {
  // AppDrawer({super.key});

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

int selectedIndex = 0;

class _AppDrawerState extends State<AppDrawer> {
  Widget _createDrawerItem(
      {required String text,
      required GestureTapCallback onTap,
      required bool isSelected}) {
    return Ink(
        color:
            isSelected ? Color(0x3f7ccd).withOpacity(0.1) : Colors.transparent,
        child: Row(
          children: [
            Container(
              width: 4,
              height: 76,
              color: isSelected ? Color(0x3f7ccd).withOpacity(1) : Colors.white,
            ),
            Expanded(
              child: ListTile(
                selected: true,
                hoverColor: Colors.white,
                title: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    text,
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
                onTap: onTap,
              ),
            ),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 150,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      AvatarView(
                        radius: 30,
                        avatarType: AvatarType.RECTANGLE,
                        imagePath: "assets/images/youthLogo.png",
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Connecting You',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // const Divider(),
            _createDrawerItem(
              text: 'Home',
              isSelected: selectedIndex == 0,
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
                setState(() {
                  selectedIndex = 0;
                });
              },
            ),
            // const Divider(),
            _createDrawerItem(
              text: 'Urgent Help',
              isSelected: selectedIndex == 1,
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed(UrgentHelpScreen.routeName);
                setState(() {
                  selectedIndex = 1;
                });
              },
            ),
            // const Divider(),
            _createDrawerItem(
              text: 'How it Works',
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed(HowItWorks.routeName);
                setState(() {
                  selectedIndex = 2;
                });
              },
              isSelected: selectedIndex == 2,
            ),
            // const Divider(),
            _createDrawerItem(
              text: 'About YWI',
              onTap: () {
                Navigator.of(context).pushReplacementNamed(AboutYWI.routeName);
                setState(() {
                  selectedIndex = 3;
                });
              },
              isSelected: selectedIndex == 3,
            ),
            // const Divider(),
            _createDrawerItem(
              text: 'Contact Us',
              onTap: () {
                Navigator.of(context).pushReplacementNamed(ContactUs.routeName);
                setState(() {
                  selectedIndex = 4;
                });
              },
              isSelected: selectedIndex == 4,
            ),
            // const Divider(),
            _createDrawerItem(
              text: 'FAQs',
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed(FAQsScreen.routeName);
                setState(() {
                  selectedIndex = 5;
                });
              },
              isSelected: selectedIndex == 5,
            ),
            // const Divider(),
            _createDrawerItem(
              text: 'Terms of Use',
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed(TermsOfUse.routeName);
                setState(() {
                  selectedIndex = 6;
                });
              },
              isSelected: selectedIndex == 6,
            ),
          ],
        ),
      ),
    );
  }
}
