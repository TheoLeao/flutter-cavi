import 'package:cavi/pages/flutterPages.dart';
import 'package:cavi/pages/otherPage.dart';
import 'package:cavi/pages/pageClients.dart';
import 'package:cavi/pages/pagePlace.dart';
import 'package:cavi/pages/pageProducts.dart';
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
  int pageIndex = 0;

//Crée toutes les pages
final PageProducts _listProducts = PageProducts();
final PageClients _clients = new PageClients();
final PagePlace _sites = new PagePlace();
final FlutterPages _flutterPages = new FlutterPages();
final OtherPage _otherPage = new OtherPage();


Widget _showPage = new PageProducts();
Widget _pageChooser(int page){
  switch (page){
    case 0:
    return _listProducts;
    break;
    case 1:
    return _clients;
    break;
    case 2:
    return _sites;
    break;
    case 3:
    return _flutterPages;
    break;
    case 4:
    return _otherPage;
    break;
    default:
    return new Container(
      child: new Center(
        child: new Text('Aucune pages trouvées',style: new TextStyle(fontSize: 30))
        )
    );
  }
}




  GlobalKey _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Cavi - Ma cave à vin'),
          backgroundColor: PrimaryColor,
        ),
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          backgroundColor: Background,
          buttonBackgroundColor: PrimaryColor,
          index: pageIndex,
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
          onTap: (int tappedIndex) {
            setState(() {
              _showPage = _pageChooser(tappedIndex);
            });
          },
        ),
        body: Container(
          color: Background,
          child: _showPage ,
        )
        );
      
  }
}