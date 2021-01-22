/*
 * Copyright (c) 2021/  1/ 22.  Created by Hashim Tahir
 */

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'TestViewModel.dart';

class TestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TestViewModel>.reactive(
        builder: (context, model, child) => Scaffold(
              body: Center(
                /*Get the event from the view model*/
                child: Text(model.title),
              ),
              floatingActionButton:
                  FloatingActionButton(onPressed: model.hUpdateCounter),
            ),
        viewModelBuilder: () => TestViewModel());
  }
}
