import 'package:flutter/material.dart';
import 'package:imperio/constants/constants.dart';
import 'package:imperio/utils/utils.dart';

class HeaderSports extends StatelessWidget {
  const HeaderSports({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            InkWell(
              onTap: () {
                Utils.popPage(context);
              },
              child: Container(
                height: 50,
                width: 50,
                child: Icon(
                  Icons.arrow_back_ios,
                  color: blackColor,
                ),
                decoration: BoxDecoration(
                    color: yellowColor,
                    borderRadius: BorderRadius.circular(50)),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              "Esportes",
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: blackColor, fontSize: 25),
            ),
          ],
        ),
      ],
    );
  }
}
