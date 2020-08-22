import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:last_pass/src/widgets/credential_type_registration.dart';
import 'package:last_pass/src/widgets/lastPass_title.dart';

class RegisterPasswordScreen extends StatefulWidget {
  @override
  _RegisterPasswordScreenState createState() => _RegisterPasswordScreenState();
}

class _RegisterPasswordScreenState extends State<RegisterPasswordScreen> {
  int _selectedMainPage = 0;

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 255, 255, 0.1),
        elevation: 0.0,
        leading: GestureDetector(
          onTap: () {},
          child: Center(
            child: Text(
              'BACK',
              style: TextStyle(
                fontFamily: 'Scientia',
                fontWeight: FontWeight.w600,
                color: Color.fromRGBO(0, 0, 0, 1.0),
              ),
            ),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                LastPassTitle(
                  height: screen.height * 0.55,
                  width: screen.width * 0.7,
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio:
                      ((screen.height - kToolbarHeight - 24) / 2) /
                          screen.width,
                  crossAxisCount: 2,
                ),
                itemCount: 8,
                itemBuilder: (context, index) {
                  return CredentialTypeRegistration(
                      active: _selectedMainPage == index,
                      title: 'Passwords',
                      icon: FontAwesomeIcons.unlockAlt,
                      onTap: () {
                        setState(() {
                          _selectedMainPage = index;
                        });
                      });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
