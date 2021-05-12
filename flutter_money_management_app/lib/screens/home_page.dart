import 'package:flutter/material.dart';

class TheHomePage extends StatefulWidget {
  @override
  _TheHomePageState createState() => _TheHomePageState();
}

class _TheHomePageState extends State<TheHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        /*appBar: AppBar(centerTitle: true, title: const Text('This is IT')),*/
        body: Container(
            margin: EdgeInsets.only(top: 15),
            /*color: Colors.red,*/
            child: ListView(physics: ClampingScrollPhysics(), children: [
              Container(
                  margin: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      /*SvgPicture.asset,*/
                      Container(
                          height: 59,
                          width: 59,
                          margin: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image:
                                    AssetImage('assets/images/user_image.png'),
                              )))
                    ],
                  )),
            ])));
  }
}
