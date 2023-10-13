import 'package:flutter/material.dart';

class LineTitles {
  static Widget getTitleData(value, meta) {
    var textStyle = TextStyle(fontSize: 9);
    switch (value.toInt()) {
      case 0:
        return Text('12:00AM', style: textStyle);
      case 2:
        return Padding(
          padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
          child: Text('3:00AM', style: textStyle),
        );
      case 5:
        return Text('6:00AM', style: textStyle);
      case 8:
        return Text('9:00AM', style: textStyle);
      case 11:
        return Text('12:00PM', style: textStyle);
      case 14:
        return Text('3:00PM', style: textStyle);
      case 17:
        return Text('6:00PM', style: textStyle);
      case 21:
        return Text('9:00PM', style: textStyle);
    }
    return Text("", style: textStyle);
  }
}
