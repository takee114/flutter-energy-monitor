import 'package:flutter/material.dart';

Widget getDays(value, meta) {
  switch (value.toInt()) {
    case 0:
      return Text("Sun");
      break;
    case 1:
      return Text("Mon");
      break;
    case 2:
      return Text("Tue");
      break;
    case 3:
      return Text("Wed");
      break;
    case 4:
      return Text("Thur");
      break;
    case 5:
      return Text("Fri");
      break;
    case 6:
      return Text("Sat");
      break;
    default:
      return Text("");
  }
}
