import 'package:flutter/material.dart';
import 'package:imperio/constants/constants.dart';
import 'package:imperio/provider/sports_provider.dart';
import 'package:provider/provider.dart';

class TipsPanel extends StatelessWidget {
  const TipsPanel({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<SportsProvider>(
      builder: (context, _sportsProvider, child) {
        return Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              width: getSizeWidth(0.8, context),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Dicas",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: blackColor,
                        fontSize: 20),
                  ),
                  Text(
                    "Ver todas",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: blackColor,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: _sportsProvider.listTips.map<Widget>((e) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 40,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 8,
                                  blurStyle: BlurStyle.outer,
                                ),
                              ]),
                          child: Column(
                            children: [
                              Container(
                                height: getSizeHeight(0.25, context),
                                width: getSizeWidth(0.7, context),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(e.image),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(50),
                                        topRight: Radius.circular(50)),
                                    color: blackColor),
                              ),
                              Container(
                                width: getSizeWidth(0.7, context),
                                padding: EdgeInsets.all(20),
                                child: Column(
                                  children: [
                                    Text(
                                      e.title,
                                      maxLines: 2,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize:
                                              getSizeWidth(0.05, context)),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      e.description,
                                      maxLines: 2,
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 10,
                                              horizontal:
                                                  getSizeWidth(0.02, context)),
                                          child: Row(
                                            children: [
                                              Container(
                                                height: 20,
                                                width: 20,
                                                child: Image.asset(
                                                  'assets/images/ball-soccer.png',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                "Futebol",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: getSizeHeight(
                                                        0.02, context)),
                                              ),
                                            ],
                                          ),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              border: Border.all(
                                                  width: 2, color: blackColor)),
                                        ),
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 10,
                                              horizontal:
                                                  getSizeWidth(0.02, context)),
                                          child: Row(
                                            children: [
                                              Container(
                                                height: 20,
                                                width: 20,
                                                child: Image.asset(
                                                  'assets/images/ball-basket.png',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                "Basquete",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: getSizeHeight(
                                                        0.02, context)),
                                              ),
                                            ],
                                          ),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              border: Border.all(
                                                  width: 2, color: blackColor)),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(50),
                                        bottomRight: Radius.circular(50)),
                                    color: whiteColor),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        );
      },
    );
  }
}
