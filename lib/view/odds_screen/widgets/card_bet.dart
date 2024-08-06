import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:imperio/constants/constants.dart';
import 'package:imperio/provider/sports_provider.dart';
import 'package:provider/provider.dart';

class CardBet extends StatelessWidget {
  final match;
  const CardBet({Key key, @required this.match}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<SportsProvider>(
      builder: (context, _sportsProvider, child) {
        return Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Casa apostadora",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: getSizeHeight(0.025, context)),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: Column(
                            children: [
                              Text(""),
                              Container(
                                height: 50,
                                width: 50,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                height: 30,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/xbet-icon.png'),
                                        fit: BoxFit.cover)),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 30,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/betsafe-icon.png'),
                                        fit: BoxFit.cover)),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 30,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/icon-betsson.png'),
                                        fit: BoxFit.cover)),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Text(match.team_a),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(match.team_a_image))),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 30,
                              width: 60,
                              child: Center(
                                child: Text(
                                  "3.2",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: whiteColor),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  color: blackColor,
                                  borderRadius: BorderRadius.circular(50)),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 30,
                              width: 60,
                              child: Center(
                                child: Text(
                                  "3.2",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: blackColor),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1, color: Colors.grey[600]),
                                  borderRadius: BorderRadius.circular(50)),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 30,
                              width: 60,
                              child: Center(
                                child: Text(
                                  "3.2",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: blackColor),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1, color: Colors.grey[600]),
                                  borderRadius: BorderRadius.circular(50)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Text(""),
                            Container(
                              height: 50,
                              width: 50,
                              child: Center(
                                child: Text(
                                  'vs',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey[800]),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 30,
                              width: 60,
                              child: Center(
                                child: Text(
                                  "3.2",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: blackColor),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1, color: Colors.grey[600]),
                                  borderRadius: BorderRadius.circular(50)),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 30,
                              width: 60,
                              child: Center(
                                child: Text(
                                  "3.2",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: whiteColor),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  color: blackColor,
                                  borderRadius: BorderRadius.circular(50)),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 30,
                              width: 60,
                              child: Center(
                                child: Text(
                                  "3.2",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: blackColor),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1, color: Colors.grey[600]),
                                  borderRadius: BorderRadius.circular(50)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Text(match.team_b),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(match.team_b_image))),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 30,
                              width: 60,
                              child: Center(
                                child: Text(
                                  "3.2",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: blackColor),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1, color: Colors.grey[600]),
                                  borderRadius: BorderRadius.circular(50)),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 30,
                              width: 60,
                              child: Center(
                                child: Text(
                                  "3.2",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: blackColor),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1, color: Colors.grey[600]),
                                  borderRadius: BorderRadius.circular(50)),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 30,
                              width: 60,
                              child: Center(
                                child: Text(
                                  "3.2",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: whiteColor),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  color: blackColor,
                                  borderRadius: BorderRadius.circular(50)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: HexColor('#c0c4c2'),
              ),
            ),
          ],
        );
      },
    );
  }
}
