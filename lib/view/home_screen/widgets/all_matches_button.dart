import 'package:flutter/material.dart';
import 'package:imperio/constants/constants.dart';

class AllMatchesButton extends StatefulWidget {
  const AllMatchesButton({Key key}) : super(key: key);

  @override
  State<AllMatchesButton> createState() => _AllMatchesButtonState();
}

class _AllMatchesButtonState extends State<AllMatchesButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: getSizeWidth(0.8, context),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Acompanhe todas as partidas",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
                fontSize: getSizeWidth(0.045, context)),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            height: getSizeWidth(0.09, context),
            width: getSizeWidth(0.15, context),
            child: Icon(
              Icons.arrow_forward,
              color: blackColor,
              size: getSizeWidth(0.07, context),
            ),
            decoration: BoxDecoration(
                color: yellowColor, borderRadius: BorderRadius.circular(50)),
          )
        ],
      ),
    );
  }
}
