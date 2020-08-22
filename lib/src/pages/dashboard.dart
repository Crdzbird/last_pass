import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:last_pass/src/widgets/corner_button.dart';
import 'package:last_pass/src/widgets/folder_card.dart';
import 'package:last_pass/src/widgets/recent_card.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 20.0,
                  ),
                  _userStatus(screen),
                  SizedBox(height: 20.0),
                  _freeUser(screen),
                  SizedBox(height: 25.0),
                  _folders(screen),
                  SizedBox(height: 25.0),
                  _recent(screen),
                ],
              ),
            ),
            Positioned(
              bottom: 0.0,
              right: 0.0,
              child: CornerButton(
                height: kToolbarHeight,
                title: 'ADD',
                width: screen.width * 0.3,
                backgroundColor: Color.fromRGBO(0, 0, 0, 1.0),
                tap: () => Navigator.pushNamed(context, 'registerPassword'),
              ),
            ),
          ],
        ),
      ),
    );
  }

//TODO: THIS ALSO IS GONNA BE A LIST OF RECENT ACCESS.
  Widget _recent(Size screen) {
    return Flexible(
      child: Container(
        width: screen.width,
        height: screen.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'RECENT',
              style: TextStyle(
                fontFamily: 'Scientia',
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(0, 0, 0, 0.4),
              ),
            ),
            Flexible(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  RecentCard(
                    leadingColor: Color.fromRGBO(0, 0, 0, 1.0),
                    leadingIcon: FontAwesomeIcons.unlockAlt,
                    title: 'Gmail Passwords',
                    trailingIcon: FontAwesomeIcons.arrowRight,
                    trailingColor: Color.fromRGBO(0, 0, 0, 1.0),
                  ),
                  Divider(
                    height: 7.0,
                    color: Color.fromRGBO(0, 0, 0, 0.4),
                    thickness: 0.4,
                  ),
                  RecentCard(
                    leadingColor: Color.fromRGBO(0, 0, 0, 1.0),
                    leadingIcon: FontAwesomeIcons.monero,
                    title: 'City Bank Password',
                    trailingIcon: FontAwesomeIcons.arrowRight,
                    trailingColor: Color.fromRGBO(0, 0, 0, 1.0),
                  ),
                  Divider(
                    height: 7.0,
                    color: Color.fromRGBO(0, 0, 0, 0.4),
                    thickness: 0.4,
                  ),
                  RecentCard(
                    leadingColor: Color.fromRGBO(0, 0, 0, 1.0),
                    leadingIcon: FontAwesomeIcons.home,
                    title: 'Addresses',
                    trailingIcon: FontAwesomeIcons.arrowRight,
                    trailingColor: Color.fromRGBO(0, 0, 0, 1.0),
                  ),
                  Divider(
                    height: 7.0,
                    color: Color.fromRGBO(0, 0, 0, 0.4),
                    thickness: 0.4,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

//TODO: THIS IS GONNA BE A STREAM OF FOLDERS, ORDERED BY MOST RECENT.
  Widget _folders(Size screen) {
    return Container(
      width: screen.width,
      height: screen.height * 0.20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'FOLDERS',
            style: TextStyle(
              fontFamily: 'Scientia',
              fontWeight: FontWeight.w400,
              color: Color.fromRGBO(0, 0, 0, 0.4),
            ),
          ),
          Flexible(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                FolderCard(
                  title: 'Important',
                  icon: FontAwesomeIcons.unlockAlt,
                  iconColor: Color.fromRGBO(255, 255, 255, 1.0),
                  folderColor: Color.fromRGBO(249, 90, 84, 1.0),
                ),
                SizedBox(width: 7.0),
                FolderCard(
                  title: 'All home wifis',
                  icon: FontAwesomeIcons.wifi,
                  iconColor: Color.fromRGBO(255, 255, 255, 1.0),
                  folderColor: Color.fromRGBO(199, 163, 123, 1.0),
                ),
                SizedBox(width: 7.0),
                FolderCard(
                  title: 'All home wifis',
                  icon: FontAwesomeIcons.unlockAlt,
                  iconColor: Color.fromRGBO(255, 255, 255, 1.0),
                  folderColor: Color.fromRGBO(249, 90, 84, 1.0),
                ),
                SizedBox(width: 7.0),
                FolderCard(
                  title: 'Important',
                  icon: FontAwesomeIcons.unlockAlt,
                  iconColor: Color.fromRGBO(255, 255, 255, 1.0),
                  folderColor: Color.fromRGBO(249, 90, 84, 1.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _freeUser(Size screen) {
    return Stack(
      children: [
        Container(
          width: screen.width,
          height: screen.height * 0.08,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Color.fromRGBO(0, 0, 0, 0.1),
          ),
        ),
        Container(
          width: screen.width,
          height: screen.height * 0.08,
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'You are a Free user',
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1.0),
                  fontFamily: 'Scientia',
                  fontWeight: FontWeight.w900,
                  fontSize: 16.0,
                ),
              ),
              FlatButton(
                splashColor: Colors.blue,
                onPressed: () {},
                color: Color.fromRGBO(0, 0, 0, 1.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.0, vertical: 18.0),
                  child: Text(
                    'Upgrade',
                    style: TextStyle(
                      fontFamily: 'Scientia',
                      fontSize: 15.0,
                      color: Color.fromRGBO(255, 255, 255, 1.0),
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  Widget _userStatus(Size screen) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
              width: screen.width * 0.15,
              height: screen.width * 0.15,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/agapornis.jpg',
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          width: 15.0,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Martha Rojas',
              style: TextStyle(
                fontFamily: 'Scientia',
                fontSize: 17.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 3.0,
            ),
            Text(
              'martha01',
              style: TextStyle(
                fontFamily: 'Scientia',
                fontSize: 25.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 3.0,
            ),
            Text(
              'martha_rojas@gmail.com',
              style: TextStyle(
                fontFamily: 'Scientia',
                fontSize: 15.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
