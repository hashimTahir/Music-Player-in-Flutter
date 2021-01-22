# Flutter Music Player
## The Good , The Bad and the ugly of Flutter-Dart.
----------------------------------------------------------------------

## The Good


Flutter is great for fast paced ui building. It just works and works
great. The trouble one has to go through for animations and building
ui's in Xml in native,is not a major issue in Flutter as animations and
easily customizeable widgets comes pre-built in Flutter. P.s. It is cross
platform and works across both Android and Ios.


## The Bad


Everything in flutter is a Plug-in. Plug-ins are pre build libraries
written by other developers, which actually convert the written code
in native for both Ios and Android. One does not have the freedom to
access the underlying native platforms. It has to be done by a Plug-in.
But the good news is there are already thousands and thousands of Plug-ins
available for Flutter.

## The Ugly


Dart is an ugly language. From access modifiers to interfaces to even
naming conventions, its all ugly.



## Architecture - Independent of Flutter framework.

  Thoe Core pillars of stack architecture.

###    State Management:
 This is how the state of the application is kept in sync
 with what's being shown on the UI.
###    Navigation:
Flutters built in named routing functionality is used along with
Get and auto_route to remove all the boilerplate code.

 ###   Inversion of Control:
  In layman's terms called Dependency Injection or Service Location.
   For this  use get_it and injectable to generate all the service code.


 ###   Data Models: Freezed and Json_serializable is used to
  generate all of our models required in the app.
