// ignore_for_file: file_names

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../classes/Config.dart';

class Utils {

  // ===============================
  // logging stuff
  // ===============================

  // timestamp stuff
  static String initString = '(main.dart) <<< "' + Config.appName! + '" version ' + Config.appVersion! + ' "Ready-to-go" (debug = ' + Config.debugFlag!.toString() + ') >>>';
  static int beginTimeStamp = DateTime.now().millisecondsSinceEpoch;  
  
  // log stuff (and related timestamp stuff)
  static String logText = '- Debug Log -\n';
  static void clearLog() {
    logText = '- Debug Log -\n';
    log(initString);
    log('(clear log)');
  }

  static int getBeginTimeStamp() {
    return beginTimeStamp;
  }

  static int timeStamp () {
    return DateTime.now().millisecondsSinceEpoch;
  }

  static String timeDiff () {
    int diff = timeStamp() - getBeginTimeStamp();
    double diffNum = 0;
    if (diff < 0) {
      diffNum = 0;
    }
    else {
      diffNum = diff * .001;
    }
    return diffNum.toStringAsFixed(1) + ' sec';
  }

  static void _print(String message){
    if (kDebugMode) {
      print(message);
    }
  }

  static void log (String message){
    _print('>> (' + timeDiff() + ') ' + message );
    logText += '\n(' + timeDiff() + ') ' + message + '\n'; 
  }  






  // ===============================
  // colors and debugging stuff
  // ===============================

  static const Color _debug1 = Colors.pink;
  static const Color _debug2 = Colors.orange;
  static const Color _debug3 = Colors.purple;
  static const Color _debug4 = Colors.blue;
  static const Color _debug5 = Colors.green;

  static Color getDebugColor( int num, bool debugFlag ) {

    if (debugFlag == true ) {
      switch(num) {
        case 1 :
          return _debug1;
        case 2 :
          return _debug2;
        case 3 :
          return _debug3;
        case 4 :
          return _debug4;
        case 5 :
          return _debug5;
        default:
          return Colors.transparent;
      }
    }
    else {
      return Colors.transparent;
    }
  }





  // ===============================
  // not sure?
  // ===============================

  static String getDateSlug(DateTime today){
    String dateSlug ="${today.year.toString()}-${today.month.toString().padLeft(2,'0')}-${today.day.toString().padLeft(2,'0')}";
    ///TEMP
    dateSlug = Config.debugDate!;
    // END TEMP
    return dateSlug;
  }

}