import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:last_pass/src/provider/form_notifier_provider.dart';
import 'package:last_pass/src/utils/fade_indexed_stack.dart';
import 'package:last_pass/src/utils/screens.dart';
import 'package:last_pass/src/widgets/corner_button.dart';
import 'package:last_pass/src/widgets/lastPass_title.dart';
import 'package:provider/provider.dart';

class CredentialsScreen extends StatefulWidget {
  @override
  _CredentialsScreenState createState() => _CredentialsScreenState();
}

class _CredentialsScreenState extends State<CredentialsScreen> {
  FormNotifierProvider formNotifierProvider;

  @override
  Widget build(BuildContext context) {
    formNotifierProvider = Provider.of<FormNotifierProvider>(context);
    final screen = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: formNotifierProvider.form,
          builder: (context, value, child) {
            return Container(
              child: Column(
                children: [
                  SizedBox(
                    height: screen.height * 0.03,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                    child: Row(
                      children: [
                        LastPassTitle(
                          height: screen.height * 0.15,
                          width: screen.width,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 35.0,
                  ),
                  Flexible(
                    child: FadeIndexedStack(
                      index: (!value) ? 0 : 1,
                      children: credentialScreens,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 10.0),
                        child: _termsConditions(context, screen),
                      ),
                      CornerButton(
                        width: screen.width * 0.3,
                        height: kToolbarHeight,
                        backgroundColor: Color.fromRGBO(0, 0, 0, 1.0),
                        title: !value ? 'SIGNUP' : 'LOGIN',
                        tap: () => {
                          Navigator.pushReplacementNamed(context, 'dashboard'),
                        },
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _termsConditions(BuildContext context, Size size) {
    return RichText(
      text: TextSpan(
        style: TextStyle(
          fontFamily: 'Scientia',
          fontSize: size.width * 0.05,
          fontWeight: FontWeight.w600,
          color: Color.fromRGBO(0, 0, 0, 1.0),
        ),
        text: 'TERMS & C',
        children: [
          WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            child: Icon(FontAwesomeIcons.caretRight),
          ),
        ],
      ),
    );
  }
}
