import 'package:flutter/material.dart';
import 'package:imperio/constants/constants.dart';
import 'package:imperio/utils/utils.dart';
import 'package:imperio/view/home_screen/home_screen.dart';

class PhoneButton extends StatelessWidget {
  const PhoneButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Utils.goToPage(context: context, page: HomeScreen());
      },
      child: Container(
        height: getSizeWidth(0.155, context),
        width: getSizeWidth(0.4, context),
        child: Center(
          child: Text(
            "Telefone",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: yellowColor,
        ),
      ),
    );
  }
}
