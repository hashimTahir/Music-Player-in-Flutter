/*
 * Copyright (c) 2021/  1/ 20.  Created by Hashim Tahir
 */

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    /*Todo user router*/
    Timer(Duration(seconds: 3),
        () => {Navigator.pushReplacementNamed(context,'')});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple,
        body: SafeArea(
          child: new Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      "images/music_skull.png",
                      height: 200,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 5),
                  child: Text(
                    "Music player",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child:
                        // ? CircularProgressIndicator(
                        //     backgroundColor: Colors.white,
                        //   )
                        Container(),
                  ),
                ),
                Text("Setting up...",
                    style: TextStyle(color: Colors.white, fontSize: 20))
              ],
            ),
          ),
        ));
  }
}
