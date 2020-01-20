import 'package:flutter/material.dart';
import '../themes/color.dart';

//Class permettant d'aligner horizontalement un text
class CenterHorizontal extends StatelessWidget {
  CenterHorizontal(this.child);
  final Widget child;
  @override
  Widget build(BuildContext context) =>
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [child]);
}

class PageAccueil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            height: 1000,
            child: Align(
                alignment: Alignment.center,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      //Padding du text "Ma Cave"
                      Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("Ma cave",
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold)),
                          )),
                      //Align du container jaune
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                            height: 300,
                            width: 370,
                            color: SecondaryColor,
                            child: Column(children: <Widget>[
                              Stack(
                                children: <Widget>[
                                  Align(
                                      alignment: AlignmentDirectional(-0.8, 0),
                                      child: //Container cercle blanc
                                          Container(
                                        width: 120.0,
                                        height: 120.0,
                                        decoration: new BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                        ),
                                        //Colonne à l'intérieur du cercle
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: <Widget>[
                                            //Texts à l'interieur de la colonne dans le cercle
                                            CenterHorizontal(Text("34",
                                                style: TextStyle(
                                                    fontSize: 40,
                                                    fontWeight:
                                                        FontWeight.bold))),
                                            CenterHorizontal(Text("bouteilles",
                                                style: TextStyle(fontSize: 20)))
                                          ],
                                        ),
                                      ))
                                ],
                              )
                            ])),
                      )
                    ]))));
  }
}
