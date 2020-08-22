import 'package:flutter/material.dart';

class LastPassTitle extends StatelessWidget {
  final double height, width;

  LastPassTitle({@required this.height, @required this.width});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        text: TextSpan(
          style: TextStyle(
            fontFamily: 'Flexo',
            fontSize: width * 0.1,
            fontWeight: FontWeight.w700,
            color: Color.fromRGBO(0, 0, 0, 1.0),
          ),
          text: 'Last',
          children: [
            TextSpan(
              text: 'Pass',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Color.fromRGBO(219, 85, 79, 1.0),
              ),
            ),
            WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: Container(
                width: 10.0,
                height: 10.0,
                margin: EdgeInsets.only(left: 5.0, top: 7.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  color: Color.fromRGBO(219, 85, 79, 1.0),
                ),
              ),
            ),
            WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: Container(
                width: 10.0,
                height: 10.0,
                margin: EdgeInsets.only(left: 7.0, right: 7.0, top: 7.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  color: Color.fromRGBO(219, 85, 79, 1.0),
                ),
              ),
            ),
            WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: Container(
                width: 10.0,
                height: 10.0,
                margin: EdgeInsets.only(top: 7.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  color: Color.fromRGBO(219, 85, 79, 1.0),
                ),
              ),
            ),
            WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: Container(
                width: 1.7,
                height: width * 0.07,
                margin: EdgeInsets.only(left: 5.0),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(212, 45, 39, 1.0),
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
