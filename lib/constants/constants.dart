import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:imperio/provider/auth_provider.dart';
import 'package:imperio/provider/sports_provider.dart';
import 'package:provider/provider.dart';

dynamic blackColor = Colors.black;
dynamic whiteColor = Colors.white;
dynamic yellowColor = HexColor('#f5d70a');
dynamic greyColor = HexColor('#e6e6e6');
dynamic lightYellowColor = HexColor('#faf4cb');
dynamic darkGreyColor = HexColor('#c0c4c2');
//dynamic darkGreyColor = HexColor('#f3f0d8');

dynamic BASE_URL = 'https://6569cc7dde53105b0dd7af5c.mockapi.io/';

double getSizeWidth(number, context) {
  return MediaQuery.of(context).size.width * number;
}

double getSizeHeight(number, context) {
  return MediaQuery.of(context).size.height * number;
}

AuthProvider getAuthProvider(context) {
  return Provider.of<AuthProvider>(context, listen: false);
}

SportsProvider getSportsProvider(context) {
  return Provider.of<SportsProvider>(context, listen: false);
}
