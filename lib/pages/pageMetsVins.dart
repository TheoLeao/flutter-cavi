import 'package:cavi/themes/color.dart';
import 'package:flutter/material.dart';

//Class permettant d'aligner horizontalement un text
class CenterHorizontal extends StatelessWidget {
  CenterHorizontal(this.child);
  final Widget child;
  @override
  Widget build(BuildContext context) =>
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [child]);
}
class PageMetsVins extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
      body: Stack(
        children: <Widget>[
          //Align du tite "Ma Cave"
          Align(
            alignment: AlignmentDirectional(0, -0.92),
            child: Text("Ma Cave",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))
          ),
          //Align du rectangle jaune
          Align(
            alignment: AlignmentDirectional(0, -0.68),
            child: Container(
            alignment: Alignment.center,
            width: 380,
            height: 280,
            color: SecondaryColor,
          ),
          ),
          //Align du cercle blanc
          Align(
            alignment: AlignmentDirectional(-0.82, -0.73),
            child: Container(
              height: 130,
              width: 130,
              decoration: new BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle
              ),
              child: Stack(children: <Widget>[
                
              ],),
            ),
          ),
          //Align du texte "34"
          Align(
            alignment: AlignmentDirectional(-0.67, -0.70),
              child: Text("34", style: TextStyle(fontSize: 66, fontFamily: 'ScriptMT'))
          ),
          Align(
            alignment: AlignmentDirectional(-0.7, -0.54),
              child: Text("Bouteilles", style: TextStyle(fontSize: 23, fontFamily: 'ScriptMT' ))
          ),
          Align(
            alignment: AlignmentDirectional(0.45, -0.7),
              child: Text("BOUTEILLES DE VINS ROUGE", style: TextStyle(fontSize: 21, fontFamily: 'Bebas' ))
          ),
          Align(
            alignment: AlignmentDirectional(0.86, -0.7),
            child: Container(
              height: 28,
              width: 28,
              decoration: new BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle
              ),
              child: Stack(children: <Widget>[
                
              ],),
            ),
          )
        ],
      ),
    ));
  }
}
