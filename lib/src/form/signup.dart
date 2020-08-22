import 'package:flutter/material.dart';
import 'package:last_pass/src/widgets/credentials_question.dart';

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        width: size.width,
        height: size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Signup',
              style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1.0),
                fontFamily: 'Scientia',
                fontWeight: FontWeight.w500,
                fontSize: 40.0,
              ),
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelStyle: TextStyle(
                  fontFamily: 'Flexo',
                  fontWeight: FontWeight.w500,
                ),
                hintText: 'jhondoe@gmail.com',
                labelText: 'Email address',
              ),
              style: TextStyle(
                fontFamily: 'Flexo',
                fontWeight: FontWeight.w700,
                fontSize: 15.0,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              decoration: InputDecoration(
                labelStyle: TextStyle(
                  fontFamily: 'Flexo',
                  fontWeight: FontWeight.w500,
                ),
                hintText: '********',
                labelText: 'Master password',
              ),
              style: TextStyle(
                fontFamily: 'Flexo',
                fontWeight: FontWeight.w600,
                fontSize: 15.0,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              decoration: InputDecoration(
                labelStyle: TextStyle(
                  fontFamily: 'Flexo',
                  fontWeight: FontWeight.w500,
                ),
                hintText: '********',
                labelText: 'Confirm master password',
                counterText: '',
                errorText: '',
              ),
              style: TextStyle(
                fontFamily: 'Flexo',
                fontWeight: FontWeight.w600,
                fontSize: 15.0,
              ),
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelStyle: TextStyle(
                  fontFamily: 'Flexo',
                  fontWeight: FontWeight.w500,
                ),
                labelText: 'Reminder (Optional)',
              ),
              style: TextStyle(
                fontFamily: 'Flexo',
                fontWeight: FontWeight.w700,
                fontSize: 15.0,
              ),
            ),
            SizedBox(
              height: 35.0,
            ),
            Text(
              'By completing this form, I agree to the Terms \nand Privacy Policy.',
              style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1.0),
                height: 1.5,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 1.0,
                  width: size.width * 0.3,
                  margin: EdgeInsets.only(right: 20.0),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(0, 0, 0, 1.0),
                  ),
                ),
                CredentialsQuestion(
                  title: 'Login',
                ),
                Container(
                  height: 1.0,
                  width: size.width * 0.3,
                  margin: EdgeInsets.only(left: 20.0),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(0, 0, 0, 1.0),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
