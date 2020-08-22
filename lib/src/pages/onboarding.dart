import 'package:flutter/material.dart';
import 'package:last_pass/src/models/slider.dart' as Sliders;
import 'package:last_pass/src/widgets/onboard_content.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  List<Sliders.Slider> slides = new List<Sliders.Slider>();
  int _index = 0;
  double _offset = 0;
  PageController controller;

  @override
  void initState() {
    super.initState();
    slides = Sliders.getSlides();
    controller = PageController(viewportFraction: 1.0);
    controller.addListener(() {
      setState(() => _offset = controller.page);
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height * 0.9,
        width: size.width,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: PageView(
          controller: controller,
          onPageChanged: (value) => setState(
            () {
              _index = value;
            },
          ),
          children: _buildOnBoardContent(),
        ),
      ),
      bottomSheet: _index != slides.length - 1
          ? Container(
              margin: EdgeInsets.symmetric(vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FlatButton(
                    onPressed: () {
                      controller.animateToPage(
                        slides.length - 1,
                        duration: Duration(milliseconds: 400),
                        curve: Curves.linear,
                      );
                    },
                    splashColor: Colors.blue[50],
                    child: Text(
                      "SKIP",
                      style: TextStyle(
                        color: Color(0xFF0074E4),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        for (int i = 0; i < slides.length; i++)
                          i == _index
                              ? _buildPageIndicator(true)
                              : _buildPageIndicator(false),
                      ],
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      controller.animateToPage(_index + 1,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.linear);
                    },
                    splashColor: Colors.blue[50],
                    child: Text(
                      "NEXT",
                      style: TextStyle(
                        color: Color(0xFF0074E4),
                        fontWeight: FontWeight.w600,
                        fontFamily: "Flexo",
                      ),
                    ),
                  ),
                ],
              ),
            )
          : Container(
              width: size.width,
              child: FlatButton(
                onPressed: () =>
                    Navigator.pushReplacementNamed(context, 'credentials'),
                height: size.height * 0.1,
                shape: BeveledRectangleBorder(),
                color: Colors.blue,
                child: Text(
                  "GET STARTED NOW",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Flexo",
                  ),
                ),
              ),
            ),
    );
  }

  List<Widget> _buildOnBoardContent() {
    List<Widget> group = new List();
    slides.forEach(
      (slide) {
        group.add(
          OnBoardContent(
            imagePath: slide.imageAssetPath,
            title: slide.title,
            description: slide.description,
            offset: _offset - slides.indexOf(slide),
          ),
        );
      },
    );
    return group;
  }

  Widget _buildPageIndicator(bool isCurrentPage) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.0),
      height: isCurrentPage ? 10.0 : 6.0,
      width: isCurrentPage ? 10.0 : 6.0,
      decoration: BoxDecoration(
        color: isCurrentPage ? Colors.grey : Colors.grey[300],
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
