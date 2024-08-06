import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:imperio/constants/constants.dart';
import 'package:imperio/provider/sports_provider.dart';
import 'package:provider/provider.dart';

class LastMatchesResume extends StatelessWidget {
  final match;
  const LastMatchesResume({Key key, this.match}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<SportsProvider>(
      builder: (context, _sportsProvider, child) {
        return Column(
          children: [
            Text(
              "Últimos confrontos",
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: whiteColor, fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: getSizeWidth(0.8, context),
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            match.team_a,
                            style: TextStyle(color: whiteColor),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(match.team_a_image))),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            height: 20,
                            width: 2,
                            decoration: BoxDecoration(
                              color: whiteColor,
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            _sportsProvider.listLastMatches[0].team_a_won
                                .toString(),
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: whiteColor,
                                fontSize: getSizeWidth(0.08, context)),
                          ),
                          Text(
                            "Vitórias",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: whiteColor,
                                fontSize: getSizeWidth(0.04, context)),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            _sportsProvider.listLastMatches[0].draw.toString(),
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: whiteColor,
                                fontSize: 20),
                          ),
                          Text(
                            "Empates",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: whiteColor),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            match.team_b,
                            style: TextStyle(color: whiteColor),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(match.team_b_image))),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            height: 20,
                            width: 2,
                            decoration: BoxDecoration(
                              color: whiteColor,
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            _sportsProvider.listLastMatches[0].team_b_won
                                .toString(),
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: whiteColor,
                                fontSize: getSizeWidth(0.08, context)),
                          ),
                          Text(
                            "Vitórias",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: whiteColor,
                                fontSize: getSizeWidth(0.04, context)),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: HexColor('#737c78'),
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
