import 'package:flutter/material.dart';

import '../animation/Fadeanimation.dart';
class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  bool _isLogin = false;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/im_party.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
              Colors.black.withOpacity(.6),
              Colors.black.withOpacity(.5),
              Colors.black.withOpacity(.4),
              Colors.black.withOpacity(.1),
            ]),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50,),
              FadeAnimation(


                    "Find the best parties near you.",Colors.yellow,45,

                  ),
              SizedBox(
                height: 10,
              ),
              FadeAnimation(

                    "Let us find you a party for your interest",Colors.green,25

                  ),
              SizedBox(
                height: 300,
              ),


              _isLogin?
              Container(
                height: 55,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.yellow[900]
                ),
                child: Center(
                    child: Text(
                      "Start",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )),
              ):
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 40,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.red
                        ),
                        child: Center(
                            child: Text(
                              "Google",
                              style: TextStyle(color: Colors.white, fontSize: 18),
                            )),
                      ),
                      SizedBox(width: 20,),

                      Container(
                        height: 40,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.blue
                        ),
                        child: Center(
                            child: Text(
                              "Facebook",
                              style: TextStyle(color: Colors.white, fontSize: 18),
                            )),
                      ),
                    ],
                  ),



              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
