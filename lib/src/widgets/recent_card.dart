import 'package:flutter/material.dart';

class RecentCard extends StatelessWidget {
  final IconData leadingIcon;
  final Color leadingColor;
  final String title;
  final IconData trailingIcon;
  final Color trailingColor;

  RecentCard({
    this.leadingIcon,
    this.leadingColor,
    this.title,
    this.trailingIcon,
    this.trailingColor,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        leadingIcon,
        color: leadingColor,
      ),
      title: Text(
        title,
        style: TextStyle(
          color: Color.fromRGBO(0, 0, 0, 1.0),
          fontFamily: 'Scientia',
          fontWeight: FontWeight.w600,
          fontSize: 17.0,
        ),
      ),
      trailing: Icon(
        trailingIcon,
        color: trailingColor,
      ),
    );
  }
}
