import 'package:flutter/material.dart';
import 'package:imperio/constants/constants.dart';

class BannerListHome extends StatelessWidget {
  const BannerListHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            SizedBox(
              width: 10,
            ),
            Container(
              height: getSizeHeight(0.35, context),
              width: getSizeWidth(0.9, context),
              child: Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    child: Container(
                      height: getSizeHeight(0.26, context),
                      width: getSizeWidth(0.9, context),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: yellowColor),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 30,
                            top: 50,
                            child: Text(
                              "Campeonatos\nPopulares",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: getSizeWidth(0.07, context)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      height: getSizeHeight(0.3, context),
                      width: getSizeWidth(0.65, context),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                              image: AssetImage('assets/images/soccer-man.png'),
                              fit: BoxFit.cover)),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              height: getSizeHeight(0.35, context),
              width: getSizeWidth(0.9, context),
              child: Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    child: Container(
                      height: getSizeHeight(0.26, context),
                      width: getSizeWidth(0.9, context),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: darkGreyColor),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 30,
                            top: 50,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "NBA",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: getSizeWidth(0.07, context)),
                                ),
                                Text(
                                  "National Basketball\nAssociation",
                                  style: TextStyle(
                                      fontSize: getSizeWidth(0.05, context),
                                      color: Colors.grey[800]),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      height: getSizeHeight(0.3, context),
                      width: getSizeWidth(0.9, context),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/basketball-man.png'),
                              fit: BoxFit.cover)),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              height: getSizeHeight(0.35, context),
              width: getSizeWidth(0.9, context),
              child: Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    child: Container(
                      height: getSizeHeight(0.26, context),
                      width: getSizeWidth(0.9, context),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: greyColor),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 30,
                            top: 50,
                            child: Text(
                              "League\nof its Own",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: getSizeWidth(0.07, context)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 80,
                    child: Container(
                      height: getSizeHeight(0.2, context),
                      width: getSizeWidth(0.5, context),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                              image:
                                  AssetImage('assets/images/egames-image.png'),
                              fit: BoxFit.fitHeight)),
                    ),
                  )
                ],
              ),
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
