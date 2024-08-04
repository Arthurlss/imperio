import 'package:flutter/material.dart';

class Utils {
  static goToPage({@required context, @required page}) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => page));
  }

  static goToPageReplacement({@required context, @required page}) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => page));
  }

  static popPage(context) {
    Navigator.pop(context);
  }

  static Widget getLoadingWidget(color) {
    return Container(
      width: double.infinity,
      child: Center(
        child: CircularProgressIndicator(
          color: color,
        ),
      ),
    );
  }
}
