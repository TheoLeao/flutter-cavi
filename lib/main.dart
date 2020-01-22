import 'package:cavi/pages/pageAccueil.dart';
import 'package:cavi/pages/pageMaCave.dart';
import 'package:cavi/pages/pageMetsVins.dart';
import 'package:cavi/pages/pageMonprofil.dart';
import 'package:cavi/pages/pageRecherche.dart';
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
final PageRecherche _pageRecherche = PageRecherche();
final PageMaCave _pageMaCave = PageMaCave();
final PageAccueil _pageAccueil = PageAccueil();
final PageMetsVins _pageMetsVins = PageMetsVins();
final PageMonProfil _pageMonProfil = PageMonProfil();


Widget _showPage = PageRecherche();
Widget _pageChooser(int page){
  switch (page){
    case 0:
    return _pageRecherche;
    break;
    case 1:
    return _pageMaCave;
    break;
    case 2:
    return _pageAccueil;
    break;
    case 3:
    return _pageMetsVins;
    break;
    case 4:
    return _pageMonProfil;
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
            Icon(Icons.home, size: 30, color:Colors.white),
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