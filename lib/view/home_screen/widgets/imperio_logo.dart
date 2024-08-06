import 'package:flutter/material.dart';
import 'package:imperio/constants/constants.dart';

class ImperioLogo extends StatelessWidget {
  const ImperioLogo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: getSizeWidth(0.4, context),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/imperio-name.png'))),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
