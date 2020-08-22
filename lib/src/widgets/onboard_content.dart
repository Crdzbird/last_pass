import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:last_pass/src/widgets/lastPass_title.dart';

class OnBoardContent extends StatelessWidget {
  final String imagePath, title, description;
  final double offset;

  OnBoardContent({
    @required this.imagePath,
    @required this.title,
    @required this.description,
    @required this.offset,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double gauss = math.exp(-(math.pow((offset.abs() - 0.5), 2) / 0.1));
    return Container(
      width: size.width,
      height: size.height,
      child: Stack(
        children: [
          Transform.translate(
            offset: Offset(-32 * gauss * offset.sign, 0),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  ClipRRect(
                    child: SvgPicture.asset(
                      imagePath,
                      alignment: Alignment(-offset.abs(), 0),
                      fit: BoxFit.contain,
                      height: size.height * 0.3,
                      width: size.width,
                      semanticsLabel: title,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Transform.translate(
                    offset: Offset(8 * offset, 0),
                    child: Text(
                      title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        fontFamily: "Flexo",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Transform.translate(
                    offset: Offset(24 * offset, 0),
                    child: Text(
                      description,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        fontFamily: "Flexo",
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 5.0,
            left: 10.0,
            child: LastPassTitle(
              height: size.height * 0.55,
              width: size.width * 0.55,
            ),
          ),
        ],
      ),
    );
  }
}
