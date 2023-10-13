import 'package:flutter/material.dart';

Widget getMonths(value, meta) {
  switch (value.toInt()) {
    case 0:
      return Text("Ja");
      break;
    case 1:
      return Text("Fe");
      break;
    case 2:
      return Text("Mr");
      break;
    case 3:
      return Text("Ap");
      break;
    case 4:
      return Text("My");
      break;
    case 5:
      return Text("Jn");
      break;
    case 6:
      return Text("Jl");
      break;
    case 7:
      return Text("Au");
      break;
    case 8:
      return Text("Se");
      break;
    case 9:
      return Text("Oc");
      break;
    case 10:
      return Text("Nv");
      break;
    case 11:
      return Text("De");
      break;
    default:
      return Text("");
  }
}
