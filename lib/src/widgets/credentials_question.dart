import 'package:flutter/material.dart';
import 'package:last_pass/src/provider/form_notifier_provider.dart';
import 'package:provider/provider.dart';

class CredentialsQuestion extends StatefulWidget {
  final String title;

  CredentialsQuestion({this.title});

  @override
  _CredentialsQuestionState createState() => _CredentialsQuestionState();
}

class _CredentialsQuestionState extends State<CredentialsQuestion> {
  FormNotifierProvider formNotifierProvider;

  @override
  Widget build(BuildContext context) {
    formNotifierProvider = Provider.of<FormNotifierProvider>(context);

    return ValueListenableBuilder<bool>(
      valueListenable: formNotifierProvider.form,
      builder: (context, value, child) {
        return GestureDetector(
          onTap: formNotifierProvider.change,
          child: Text(
            widget.title,
            style: TextStyle(
              fontFamily: 'Flexo',
              fontWeight: FontWeight.w500,
              decoration: TextDecoration.underline,
              fontSize: 15.0,
            ),
          ),
        );
      },
    );
  }
}
