// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../classes/Utils.dart';

// This is the "brains" of the app... 90% of it is for pushing UI
// changes...

class Controller with ChangeNotifier {

  Controller () {
    Utils.log('Controller() class ("Controller.dart") initialized');
  }

  // =================
  // NAVIGATION STUFF
  // =================
  
  static int _currentPageIndex = 0;

  final List<String> _currentPageArray = [
      '/StartPage',
      '/EndPage',
  ];

  int getCurrentPageIndex() {
    return _currentPageIndex;
  }  

  void setCurrentPage( context, int num ) {
    Utils.log('(Controller.dart) setCurrentPage() to "' + _currentPageArray[num] + '"');
    _currentPageIndex = num;
    // do the navigation
    Navigator.of(context).pushNamed(_currentPageArray[num]);
  }  

}