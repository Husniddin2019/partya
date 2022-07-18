import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class FadeAnimation extends StatelessWidget {

  String texte ="";
  var rang ;
  double a = 10;

  FadeAnimation(this.texte,this.rang,this.a);

  @override
  Widget build(BuildContext context) {
    return LoopAnimation<double>(
      tween: Tween(begin: 0.0, end: 1.0),

      duration:  Duration(milliseconds: 1000),
      curve: Curves.easeOut,
      builder: (context, child, value) {
        return Transform.scale(
          scale: value,
          child: child,
        );
      },
      child: Text(texte.toString(),style: TextStyle(color: rang,fontSize: a),),
    );
  }
}