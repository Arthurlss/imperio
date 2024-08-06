import 'package:flutter/material.dart';
import 'package:imperio/constants/constants.dart';

class MenuOptions extends StatelessWidget {
  MenuOptions({Key key}) : super(key: key);
  List listSports = [
    'assets/images/all-sports.png',
    'assets/images/soccer-sports.png',
    'assets/images/basketball-sports.png',
    'assets/images/esports-sports.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: listSports.map<Widget>((e) {
              return Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: getSizeHeight(0.045, context),
                    child: Image.asset(e, fit: BoxFit.cover),
                  ),
                  SizedBox(
                    width: getSizeWidth(0.02, context),
                  )
                ],
              );
            }).toList(),
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
