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
            width: 350,
            height: 250,
            color: SecondaryColor,
          ),
          ),
          //Align du cercle blanc
          Align(
            alignment: AlignmentDirectional(-0.66, -0.69),
            child: Container(
              height: 105,
              width: 105,
              decoration: new BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle
              ),
            ),
          ),
          //Align du texte "34"
          Align(
            alignment: AlignmentDirectional(-0.55, -0.68),
              child: Text("34", style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold) )
          ),
          Align(
            alignment: AlignmentDirectional(-0.61, -0.58),
              child: Text("bouteilles", style: TextStyle(fontSize: 20) )
          )
        ],
      ),
    ));
  }
}
