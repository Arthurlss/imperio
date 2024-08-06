import 'package:cherry_toast/cherry_toast.dart';
import 'package:cherry_toast/resources/arrays.dart';
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

  static dynamic getDateFormated(String item) {
    var year = item.substring(0, 4);
    var month = item.substring(5, 7);
    var day = item.substring(8, 10);
    var hour = item.substring(11, 13);
    var minute = item.substring(14, 16);
    return day + "/" + month + "/" + year + ", " + hour + ":" + minute;
  }

  static positiveToast(@required title, @required subtitle, @required context) {
    CherryToast.info(
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      action: Text(subtitle),
      toastPosition: Position.bottom,
      actionHandler: () {},
    ).show(context);
  }

  static negativeToast(@required title, @required subtitle, @required context) {
    CherryToast.error(
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      action: Text(subtitle),
      toastPosition: Position.bottom,
      actionHandler: () {},
    ).show(context);
  }
}
