import 'package:flutter/material.dart';
import 'package:last_pass/src/painters/folder_painter.dart';

class FolderCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color iconColor;
  final Color folderColor;

  FolderCard({this.title, this.icon, this.iconColor, this.folderColor});

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      color: Color.fromRGBO(255, 255, 255, 0.7),
      child: Material(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.transparent,
        child: InkWell(
          splashColor: Colors.blue,
          borderRadius: BorderRadius.circular(10.0),
          onTap: () {},
          child: Container(
            height: screen.height * 0.20,
            width: screen.height * 0.20,
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: Column(
              children: [
                CustomPaint(
                  painter: FolderPainter(
                    color: folderColor,
                    paintingStyle: PaintingStyle.fill,
                    strokeCap: StrokeCap.round,
                    strokeWidth: 2.0,
                  ),
                  child: Container(
                    height: screen.width * 0.17,
                    width: screen.width * 0.17,
                    child: Container(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Icon(
                        icon,
                        color: iconColor,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  title,
                  style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1.0),
                    fontFamily: 'Scientia',
                    fontWeight: FontWeight.w400,
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
