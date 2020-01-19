import 'package:flutter/material.dart';
import 'themes/color.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cavi - Ma cave à vin',
      theme: MyTheme.defaultTheme, //Thème modifié avec les couleurs de "Cavi"
      debugShowCheckedModeBanner: false, 
      initialRoute: '/',
      routes: {
      // When navigating to the "/" route, build the FirstScreen widget.
      '/': (context) => MyHomePage(),
     // When navigating to the "/second" route, build the SecondScreen widget.
     '/maCave': (context) => MaCave(),
  },
    );
  }
}

class MyHomePage extends StatefulWidget{
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Accueil'),
      ),
      bottomNavigationBar: CurvedNavigationBar(
    backgroundColor: Background,
    buttonBackgroundColor: PrimaryColor,
    color: PrimaryColor,
    height: 60,
    items: <Widget>[
      Icon(FontAwesomeIcons.search, size: 30, color:Colors.white),
      Icon(FontAwesomeIcons.wineBottle, size: 30, color:Colors.white),
      Icon(FontAwesomeIcons.home, size: 30, color:Colors.white),
      Icon(FontAwesomeIcons.utensils, size: 30, color:Colors.white),
      Icon(FontAwesomeIcons.userAlt, size: 30, color:Colors.white),

    ],
    animationDuration: Duration(
      milliseconds: 501
    ),
    onTap: (index) {
     
          },
  ),
  body: Container(
    color: Background
    ),
        
    );
  }
}

class Recherche extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Recherche"),
      ),
    );
  }
}
class MaCave extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ma cave"),
      ),
    );
  }
}
class MetsVins extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mets & vins"),
      ),
    );
  }
}
class MonProfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mon profil"),
      ),
    );
  }
}
