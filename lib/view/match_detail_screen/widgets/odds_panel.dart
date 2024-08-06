import 'package:flutter/material.dart';
import 'package:imperio/constants/constants.dart';
import 'package:imperio/provider/sports_provider.dart';
import 'package:provider/provider.dart';

class OddsPanel extends StatelessWidget {
  const OddsPanel({Key key}) : super(key: key);

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
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 50,
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: blackColor),
                        child: Center(
                          child: Text(
                            "Odds mais altas",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: whiteColor),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 50,
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(width: 1, color: blackColor)),
                        child: Center(
                          child: Text(
                            "Outras odds",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Casa",
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/xbet-icon.jpg'))),
                          ),
                          Text(
                            _sportsProvider.listMatches[0].xbet_odds_avg
                                .toString(),
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Container(
                        height: 50,
                        width: 1,
                        decoration: BoxDecoration(color: Colors.grey),
                      ),
                      Column(
                        children: [
                          Text(
                            "x",
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/betsafe-icon.jpg'))),
                          ),
                          Text(
                            _sportsProvider.listMatches[0].betsafe_odds_avg
                                .toString(),
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Container(
                        height: 50,
                        width: 1,
                        decoration: BoxDecoration(color: Colors.grey),
                      ),
                      Column(
                        children: [
                          Text(
                            "Fora",
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/betsson-icon.jpg'))),
                          ),
                          Text(
                            _sportsProvider.listMatches[0].betsson_odds_avg
                                .toString(),
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: yellowColor,
              ),
            ),
          ],
        );
      },
    );
  }
}
