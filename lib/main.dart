import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'themes/color.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MaterialApp(home: BottomNavBar()));



class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Accueil'),
          backgroundColor: PrimaryColor,
        ),
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          backgroundColor: Background,
          buttonBackgroundColor: PrimaryColor,
          index: 2,
          color: PrimaryColor,
          height: 60,
          items: <Widget>[
            Icon(FontAwesomeIcons.search, size: 30, color:Colors.white),
            Icon(FontAwesomeIcons.wineBottle, size: 30, color:Colors.white),
            Icon(FontAwesomeIcons.home, size: 30, color:Colors.white),
            Icon(FontAwesomeIcons.utensils, size: 30, color:Colors.white),
            Icon(FontAwesomeIcons.userAlt, size: 30, color:Colors.white),
          ],
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
        ),
        body: Container(
          color: Background,
          child: Center(
            child: Column(
              children: <Widget>[
                Text(_page.toString(), textScaleFactor: 10.0),
                RaisedButton(
                  child: Text('Go To Page of index 1'),
                  onPressed: () {
                    final CurvedNavigationBarState navBarState =
                        _bottomNavigationKey.currentState;
                    navBarState.setPage(1);
                  },
                )
              ],
            ),
          ),
        ));
  }
}