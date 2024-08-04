import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

dynamic blackColor = Colors.black;
dynamic whiteColor = Colors.white;
dynamic yellowColor = HexColor('#f5d70a');
dynamic greyColor = HexColor('#e6e6e6');

double getSizeWidth(number, context) {
  return MediaQuery.of(context).size.width * number;
}

double getSizeHeight(number, context) {
  return MediaQuery.of(context).size.height * number;
}
