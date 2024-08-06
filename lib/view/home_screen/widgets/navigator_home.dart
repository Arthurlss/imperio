import 'package:flutter/material.dart';
import 'package:imperio/constants/constants.dart';
import 'package:imperio/utils/utils.dart';
import 'package:imperio/view/menu_screen/menu_screen.dart';

class NavigatorHome extends StatelessWidget {
  const NavigatorHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: () {
              Utils.goToPage(context: context, page: MenuScreen());
            },
            child: Container(
              height: 50,
              width: 50,
              child: Icon(
                Icons.menu,
                color: whiteColor,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(70), color: blackColor),
            ),
          ),
          Container(
            height: 50,
            width: getSizeWidth(0.55, context),
            padding: EdgeInsets.all(5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 45,
                  width: 45,
                  padding: EdgeInsets.all(10),
                  child: Image.asset('assets/images/house-icon-black.png'),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(70),
                      color: yellowColor),
                ),
                Container(
                  height: 45,
                  width: 45,
                  padding: EdgeInsets.all(10),
                  child: Image.asset('assets/images/whistle-icon-white.png'),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(70),
                      color: blackColor),
                ),
                Container(
                  height: 45,
                  width: 45,
                  padding: EdgeInsets.all(10),
                  child: Image.asset('assets/images/flag-icon.png'),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(70),
                      color: blackColor),
                ),
              ],
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50), color: blackColor),
          ),
          Container(
            height: 50,
            width: 50,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border.all(width: 2, color: blackColor),
                borderRadius: BorderRadius.circular(70),
                color: blackColor,
                image: DecorationImage(
                    image: AssetImage('assets/images/avatar.png'),
                    fit: BoxFit.cover)),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
