import 'package:flutter/material.dart';

class CredentialTypeRegistration extends StatelessWidget {
  final bool active;
  final IconData icon;
  final String title;
  final Function onTap;

  CredentialTypeRegistration({this.active, this.icon, this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInQuad,
        margin: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          border: (active)
              ? null
              : Border.all(
                  color: Color.fromRGBO(224, 224, 224, 1.0),
                  style: BorderStyle.solid,
                ),
          color: Color.fromRGBO(255, 255, 255, 1.0),
          boxShadow: (active)
              ? [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.2),
                    blurRadius: 12.0,
                    spreadRadius: 5.0,
                    offset: Offset(0.0, 0.0),
                  ),
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.2),
                    blurRadius: 12.0,
                    spreadRadius: 5.0,
                    offset: Offset(20.0, 20.0),
                  )
                ]
              : null,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 40.0,
            ),
            SizedBox(height: 15.0),
            Text(
              title,
              style: TextStyle(
                fontFamily: 'Scientia',
                fontWeight: FontWeight.w600,
                fontSize: 15.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
