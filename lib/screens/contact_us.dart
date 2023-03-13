import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:youth/widgets/appdrawer.dart';
// import '';
import '../widgets/actionbutton.dart';
import '../widgets/drawericon.dart';

class ContactUs extends StatefulWidget {
  @override
  _ContactUsState createState() => _ContactUsState();
  static const routeName = '/contactus';
}

class _ContactUsState extends State<ContactUs> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController messageController = TextEditingController();
  String? emailErrorText = '';
  String? messageErrorText = '';

  String? _validateEmail(String value) {
    if (value.isEmpty) {
      return 'Please enter your email';
    }
    if (!EmailValidator.validate(value)) {
      return 'Please enter a valid email';
    }
    return null;
  }

  String? _validateMessage(String value) {
    if (value.isEmpty) {
      return 'Please enter your message';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us',style: TextStyle(fontFamily: 'OpenSansSemiBold'),),
        leading: DrawerIcon(),
        centerTitle: true,
      ),
      drawer: AppDrawer(),
      body: Column(
        // margin: EdgeInsets.all(20),
        // height: MediaQuery.of(context).size.height * 1,
        // width: MediaQuery.of(context).size.width * 1,
        children: [
          Container(
            margin: EdgeInsets.only(right: 20, left: 20, top: 10, bottom: 10),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'You can send us feedback, suggestions or queries and we’ll revert back by email soon.',
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'OpenSans',
                      color: Color(0x545454).withOpacity(1)),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Container(
            // margin: EdgeInsets.all(20),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 20),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: Text(
                            'Email',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontFamily: 'OpenSansSemiBold',
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Color(0x4d4d4d).withOpacity(1)),
                          ),
                        ),
                        TextField(
                          controller: emailController,
                          decoration: InputDecoration(
//               border: OutlineInputBorder(),
                            border: InputBorder.none,
                            // labelText: 'Email',
                            hintText: 'Type your email',
                            hintStyle: TextStyle(
                                color: Color(0xb2b2b2).withOpacity(1)),
                            errorText: emailErrorText,

                            // errorMaxLines: 1,
                          ),
                          // focusNode: _focusNode1,
                          onEditingComplete: () {
                            FocusScope.of(context).nextFocus();
                          },
                          textInputAction: TextInputAction.next,
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: Text(
                            'Message',
                            style: TextStyle(
                                fontFamily: 'OpenSansSemiBold',
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Color(0x4d4d4d).withOpacity(1)),
                          ),
                        ),
                        TextField(
                          controller: messageController,
                          decoration: InputDecoration(
//               border: OutlineInputBorder(),
                            border: InputBorder.none,
                            // labelText: 'Email',
                            floatingLabelBehavior: FloatingLabelBehavior.never,

                            hintText: 'Type your message here...',
                            hintStyle: TextStyle(
                                color: Color(0xb2b2b2).withOpacity(1)),

                            errorText: messageErrorText,
                          ),
                          onEditingComplete: () {
                            emailErrorText =
                                _validateEmail(emailController.text);
                            messageErrorText =
                                _validateMessage(messageController.text);
                            setState(() {});
                          },
                          textInputAction: TextInputAction.done,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: ActionButton(),
    );
  }
}
