import 'package:flutter/material.dart';

class CornerButton extends StatelessWidget {
  final double width;
  final double height;
  final Color backgroundColor;
  final String title;
  final onTap tap;

  CornerButton({
    this.height,
    this.width,
    this.backgroundColor,
    this.title,
    this.tap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: RaisedButton(
        onPressed: tap,
        splashColor: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50.0),
          ),
        ),
        padding: EdgeInsets.all(0.0),
        child: Ink(
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50.0),
            ),
          ),
          child: Container(
            constraints: BoxConstraints(
              maxWidth: width,
              minHeight: 70,
            ),
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

typedef onTap = void Function();
