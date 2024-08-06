import 'package:flutter/material.dart';
import 'package:imperio/constants/constants.dart';

class DayPanel extends StatelessWidget {
  const DayPanel({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            SizedBox(
              width: 40,
            ),
            Container(
              height: 80,
              width: 120,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.pink[200]),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Live",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: whiteColor,
                        fontSize: 20),
                  )
                ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: blackColor),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 80,
              width: 120,
              child: Center(
                child: Text(
                  "Hoje",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(width: 2, color: darkGreyColor)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 80,
              width: 120,
              child: Center(
                child: Text(
                  "01/11",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(width: 2, color: darkGreyColor)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 80,
              width: 120,
              child: Center(
                child: Text(
                  "02/11",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(width: 2, color: darkGreyColor)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 80,
              width: 120,
              child: Center(
                child: Text(
                  "03/11",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(width: 2, color: darkGreyColor)),
            ),
            SizedBox(
              width: 10,
            ),
          ]),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
