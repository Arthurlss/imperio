import 'package:flutter/material.dart';
import 'package:imperio/constants/constants.dart';

class HeaderMenu extends StatelessWidget {
  const HeaderMenu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Center(
                child: Text(
                  '                ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            Container(
              height: 50,
              width: 50,
              child: Icon(Icons.search),
              decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 8,
                      blurStyle: BlurStyle.outer,
                    ),
                  ]),
            ),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Center(
                child: Text(
                  'Ajuda e suporte',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 8,
                      blurStyle: BlurStyle.outer,
                    ),
                  ]),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Divider(),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
