import 'package:flutter/material.dart';
import 'package:imperio/constants/constants.dart';
import 'package:imperio/utils/utils.dart';
import 'package:imperio/view/email_screen/email_screen.dart';

class EmailButton extends StatelessWidget {
  const EmailButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Utils.goToPage(context: context, page: EmailScreen());
      },
      child: Container(
        height: getSizeWidth(0.155, context),
        width: getSizeWidth(0.4, context),
        child: Center(
          child: Text(
            "Email",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: whiteColor,
            border: Border.all(color: blackColor, width: 1)),
      ),
    );
  }
}
