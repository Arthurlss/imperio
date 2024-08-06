import 'package:flutter/material.dart';
import 'package:imperio/constants/constants.dart';
import 'package:imperio/controller/matches_controller.dart';
import 'package:imperio/provider/sports_provider.dart';
import 'package:imperio/utils/utils.dart';
import 'package:imperio/view/match_detail_screen/match_detail_screen.dart';
import 'package:provider/provider.dart';

class CardMatch extends StatelessWidget {
  CardMatch({Key key}) : super(key: key);
  MatchesController _matchesController = MatchesController();

  @override
  Widget build(BuildContext context) {
    return Consumer<SportsProvider>(
      builder: (context, _sportsProvider, child) {
        return Column(
          children: [
            Container(
              width: getSizeWidth(0.8, context),
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(_sportsProvider
                                        .listMatches[0].team_a_image))),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(_sportsProvider.listMatches[0].team_a)
                        ],
                      ),
                      Column(
                        children: [
                          Text("Ao vivo"),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 40,
                            width: 70,
                            child: Center(child: Text("60'")),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                    width: 1, color: Colors.grey[600])),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(_sportsProvider
                                        .listMatches[0].team_b_image))),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(_sportsProvider.listMatches[0].team_b)
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "2 : 2",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 70),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      width: getSizeWidth(0.7, context),
                      height: 50,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/match-line.jpg'),
                            fit: BoxFit.cover),
                      )),
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
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    width: getSizeWidth(0.7, context),
                    child: Divider(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () async {
                          _sportsProvider.setLoading(true);
                          await _matchesController.getBetsFromMatch(
                              context, _sportsProvider.listMatches[0].id);

                          await _matchesController.getLastMatches(
                              context, _sportsProvider.listMatches[0].id);

                          await _matchesController.getMatchDetail(
                              context, _sportsProvider.listMatches[0].id);

                          await _matchesController.getOddsFromMatch(
                              context, _sportsProvider.listMatches[0].id);
                          _sportsProvider.setLoading(false);
                          Utils.goToPage(
                              context: context,
                              page: MatchDetailScreen(
                                match: _sportsProvider.listMatches[0],
                              ));
                        },
                        child: _sportsProvider.loading == true
                            ? Container(
                                height: 50,
                                width: 50,
                                child: Utils.getLoadingWidget(blackColor))
                            : Text(
                                "Ver mais",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[600],
                                    fontSize: 20),
                              ),
                      )
                    ],
                  )
                ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: whiteColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 8,
                      blurStyle: BlurStyle.outer,
                    ),
                  ]),
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
