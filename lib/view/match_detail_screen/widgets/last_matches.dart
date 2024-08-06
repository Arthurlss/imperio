import 'package:flutter/material.dart';
import 'package:imperio/constants/constants.dart';
import 'package:imperio/provider/sports_provider.dart';
import 'package:imperio/utils/utils.dart';
import 'package:provider/provider.dart';

class LastMatches extends StatelessWidget {
  final match;
  const LastMatches({Key key, this.match}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<SportsProvider>(
      builder: (context, _sportsProvider, child) {
        return Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                SizedBox(
                  width: 20,
                ),
                Container(
                  width: getSizeWidth(0.8, context),
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(_sportsProvider
                                        .listLastMatches[0]
                                        .championship_image))),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            _sportsProvider
                                .listLastMatches[0].championship_name,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(match.team_a_image))),
                          ),
                          Column(
                            children: [
                              Text(
                                "2x2",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: getSizeWidth(0.05, context)),
                              ),
                              Text(Utils.getDateFormated(
                                  _sportsProvider.listLastMatches[0].date))
                            ],
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(match.team_b_image))),
                          ),
                        ],
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: whiteColor),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: getSizeWidth(0.8, context),
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(_sportsProvider
                                        .listLastMatches[0]
                                        .championship_image))),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            _sportsProvider
                                .listLastMatches[0].championship_name,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(match.team_a_image))),
                          ),
                          Column(
                            children: [
                              Text(
                                "2x2",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: getSizeWidth(0.05, context)),
                              ),
                              Text(Utils.getDateFormated(
                                  _sportsProvider.listLastMatches[0].date))
                            ],
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(match.team_b_image))),
                          ),
                        ],
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: whiteColor),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: getSizeWidth(0.8, context),
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(_sportsProvider
                                        .listLastMatches[0]
                                        .championship_image))),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            _sportsProvider
                                .listLastMatches[0].championship_name,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(match.team_a_image))),
                          ),
                          Column(
                            children: [
                              Text(
                                "2x2",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: getSizeWidth(0.05, context)),
                              ),
                              Text(Utils.getDateFormated(
                                  _sportsProvider.listLastMatches[0].date))
                            ],
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(match.team_b_image))),
                          ),
                        ],
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: whiteColor),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: getSizeWidth(0.8, context),
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(_sportsProvider
                                        .listLastMatches[0]
                                        .championship_image))),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            _sportsProvider
                                .listLastMatches[0].championship_name,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(match.team_a_image))),
                          ),
                          Column(
                            children: [
                              Text(
                                "2x2",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: getSizeWidth(0.05, context)),
                              ),
                              Text(Utils.getDateFormated(
                                  _sportsProvider.listLastMatches[0].date))
                            ],
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(match.team_b_image))),
                          ),
                        ],
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: whiteColor),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: getSizeWidth(0.8, context),
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(_sportsProvider
                                        .listLastMatches[0]
                                        .championship_image))),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            _sportsProvider
                                .listLastMatches[0].championship_name,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(match.team_a_image))),
                          ),
                          Column(
                            children: [
                              Text(
                                "2x2",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: getSizeWidth(0.05, context)),
                              ),
                              Text(Utils.getDateFormated(
                                  _sportsProvider.listLastMatches[0].date))
                            ],
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(match.team_b_image))),
                          ),
                        ],
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: whiteColor),
                ),
                SizedBox(
                  width: 10,
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
