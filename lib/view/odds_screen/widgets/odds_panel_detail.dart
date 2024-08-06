import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:imperio/provider/sports_provider.dart';
import 'package:provider/provider.dart';

class OddsPanelDetail extends StatelessWidget {
  const OddsPanelDetail({Key key}) : super(key: key);

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
                                        'assets/images/xbet-icon.png'))),
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
                                        'assets/images/betsafe-icon.png'))),
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
                                        'assets/images/icon-betsson.png'))),
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
                color: HexColor('#c0c4c2'),
              ),
            ),
          ],
        );
      },
    );
  }
}
