import 'package:flutter/material.dart';

class GeneratorLineTitles {
  static Widget getTitleData(value, meta) {
    var textStyle = TextStyle(fontSize: 9);
    switch (value.toInt()) {
      case 0:
        return Text('Aug 13', style: textStyle);
      case 2:
        return Padding(
          padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
          child: Text('Aug 15', style: textStyle),
        );
      case 5:
        return Text('Aug 16', style: textStyle);
      case 8:
        return Text('Aug 19', style: textStyle);
      case 11:
        return Text('Aug 20', style: textStyle);
      case 14:
        return Text('Aug 21', style: textStyle);
      case 17:
        return Text('Aug 25', style: textStyle);
      case 21:
        return Text('Aug 29', style: textStyle);
    }
    return Text("", style: textStyle);
  }
}
