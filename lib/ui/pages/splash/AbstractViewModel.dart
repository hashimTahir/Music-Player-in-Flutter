/*
 * Copyright (c) 2021/  1/ 21.  Created by Hashim Tahir
 */


/*Sinks are  inputs to view model
* Streams are outputs from view model to views*/
abstract class AbstractViewModel{
  Sink get input;
  Stream<bool> get output;

  void dispose();
}