/*
 * Copyright (c) 2021/  1/ 20.  Created by Hashim Tahir
 */

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_player/models/SongDto.dart';
import 'package:music_player/ui/pages/home/HomeViewModel.dart';
import 'package:music_player/ui/widgets/ListSongsWidget.dart';
import 'package:music_player/ui/widgets/RecentWidget.dart';
import 'package:music_player/ui/widgets/SearchSongWidget.dart';
import 'package:music_player/utils/TestData.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:stacked/stacked.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
        builder: (context, hHomeViewModel, child) => CustomScrollView(
              slivers: <Widget>[
                new SliverAppBar(
                  expandedHeight: MediaQuery.of(context).size.height / 2.4,
                  floating: false,
                  pinned: true,
                  title: new Text("Music Player"),
                  actions: <Widget>[
                    new IconButton(
                        icon: Icon(Icons.search),
                        onPressed: () {
                          Navigator.of(context)
                              .push(new MaterialPageRoute(builder: (context) {
                            return new SearchSongWidget();
                          }));
                        })
                  ],
                  flexibleSpace: new FlexibleSpaceBar(
                    // title:new Text("home"),
                    background: new Stack(
                      fit: StackFit.expand,
                      children: <Widget>[
                        ScopedModelDescendant<SongDto>(
                          builder: (context, child, model) {
                            return new Hero(
                                tag: "some tag 1",
                                /*Todo Add Image here*/
                                child: new Image.asset(
                                  "images/default_image.webp",
                                  fit: BoxFit.cover,
                                ));
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                new SliverList(
                  delegate: new SliverChildListDelegate(<Widget>[
                    new Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        elevation: 1,
                        // onPressed: (){},
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.play_circle_outline,
                                  size: 50.0,
                                  color: Theme.of(context).accentColor,
                                ),
                                ScopedModelDescendant<SongDto>(
                                    builder: (context, child, model) {
                                  return Flexible(
                                    child: RotateAnimatedTextKit(
                                        text: ["Add Some Text here"],
                                        textStyle: TextStyle(
                                          fontSize: 17.0,
                                        ),
                                        textAlign: TextAlign.left,
                                        alignment: AlignmentDirectional
                                            .topStart // or Alignment.topLeft
                                        ),
                                  );
                                }),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    new Padding(
                      padding: const EdgeInsets.only(
                          left: 8.0, top: 8.0, bottom: 8.0),
                      child: new Text(
                        "Quick actions",
                        style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Expanded(
                          child: new Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              new FloatingActionButton(
                                heroTag: "favourites",
                                onPressed: () {
                                  Navigator.of(context).push(
                                      new MaterialPageRoute(builder: (context) {
                                    return new ListSongsWidget(
                                        TestData.hGetTestData1());
                                  }));
                                },
                                child: new Icon(Icons.favorite_border),
                              ),
                              new Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 4.0)),
                              new Text(
                                "Favourites",
                                style: TextStyle(
                                    color: Colors.red, fontSize: 12.0),
                                maxLines: 1,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: new Column(
                            children: <Widget>[
                              new FloatingActionButton(
                                heroTag: "Top",
                                onPressed: () {
                                  Navigator.of(context).push(
                                      new MaterialPageRoute(builder: (context) {
                                    return new ListSongsWidget(
                                        TestData.hGetTestData2());
                                  }));
                                },
                                child: new Icon(Icons.show_chart),
                              ),
                              new Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 4.0)),
                              new Text(
                                "Top songs",
                                style: TextStyle(
                                    color: Colors.red, fontSize: 12.0),
                                maxLines: 1,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: new Column(
                            children: <Widget>[
                              new FloatingActionButton(
                                heroTag: "shuffle",
                                onPressed: () {
                                  /*Todo replace with router here*/
                                  Navigator.pushReplacementNamed(context, '');

                                  /*ToDo Add Button Press*/
                                },
                                child: new Icon(Icons.shuffle),
                              ),
                              new Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 4.0)),
                              new Text(
                                "Random",
                                style: TextStyle(
                                    color: Colors.red, fontSize: 12.0),
                                maxLines: 1,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    new Divider(),
                    new Padding(
                      padding: const EdgeInsets.only(
                          left: 8.0, top: 8.0, bottom: 8.0),
                      child: new Text(
                        "Your recents!",
                        style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    RecentWidget(TestData.hGetTestData3()),
                    new Divider(),
                    new Padding(
                      padding: const EdgeInsets.only(
                          left: 8.0, top: 8.0, bottom: 8.0),
                      child: new Text(
                        "Albums",
                        style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    RecentWidget(TestData.hGetTestData4()),
                    new Divider(),
                    new Padding(
                      padding: const EdgeInsets.only(
                          left: 8.0, top: 8.0, bottom: 8.0),
                      child: new Text(
                        "All Songs",
                        style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                    )
                  ]),
                ),
              ],
            ),
        viewModelBuilder: () => HomeViewModel());
  }
}
