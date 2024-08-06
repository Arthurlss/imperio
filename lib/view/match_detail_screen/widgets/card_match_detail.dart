import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:imperio/constants/constants.dart';
import 'package:imperio/provider/sports_provider.dart';
import 'package:provider/provider.dart';

class CardMatchDetail extends StatelessWidget {
  final match;
  const CardMatchDetail({Key key, this.match}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<SportsProvider>(
      builder: (context, _sportsProvider, child) {
        return Column(
          children: [
            Container(
              width: getSizeWidth(0.8, context),
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
                                    image: NetworkImage(match.team_a_image))),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(match.team_a)
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
                                    image: NetworkImage(match.team_b_image))),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(match.team_b)
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "2 : 2",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: getSizeWidth(0.15, context)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: getSizeWidth(0.7, context),
                    child: Divider(),
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
                  Container(
                    width: getSizeWidth(0.7, context),
                    child: Divider(),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Icon(
                              FontAwesome.thumbs_up,
                              size: getSizeWidth(0.05, context),
                            ),
                            Text(
                              _sportsProvider.matchDetail.likes_count
                                      .toString() +
                                  " K",
                              style: TextStyle(
                                  fontSize: getSizeWidth(0.03, context)),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: getSizeWidth(0.05, context),
                            ),
                            Text(
                                _sportsProvider.matchDetail.stars_count
                                        .toString() +
                                    " K",
                                style: TextStyle(
                                    fontSize: getSizeWidth(0.03, context)))
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Icon(
                              Icons.share,
                              size: getSizeWidth(0.05, context),
                            ),
                            Text(
                                _sportsProvider.matchDetail.shares_count
                                        .toString() +
                                    " K",
                                style: TextStyle(
                                    fontSize: getSizeWidth(0.03, context)))
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Icon(
                              Icons.visibility_outlined,
                              size: getSizeWidth(0.05, context),
                            ),
                            Text(
                                _sportsProvider.matchDetail.views_count
                                        .toString() +
                                    " K",
                                style: TextStyle(
                                    fontSize: getSizeWidth(0.03, context)))
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
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
            Container(
              width: double.infinity,
              height: getSizeHeight(0.15, context),
              child: Stack(
                children: [
                  Positioned(
                    bottom: getSizeHeight(0.09, context),
                    left: getSizeWidth(0.1, context),
                    child: Container(
                      height: getSizeWidth(0.08, context),
                      width: getSizeWidth(0.08, context),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(match.team_a_image),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  Positioned(
                    bottom: getSizeHeight(0.09, context),
                    right: getSizeWidth(0.11, context),
                    child: Container(
                      height: getSizeWidth(0.08, context),
                      width: getSizeWidth(0.08, context),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(match.team_b_image),
                              fit: BoxFit.cover)),
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/field.png'),
                      fit: BoxFit.cover)),
            )
          ],
        );
      },
    );
  }
}
