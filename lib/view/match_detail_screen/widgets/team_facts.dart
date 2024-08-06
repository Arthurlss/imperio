import 'package:flutter/material.dart';
import 'package:imperio/constants/constants.dart';
import 'package:imperio/provider/sports_provider.dart';
import 'package:provider/provider.dart';

class TeamFacts extends StatelessWidget {
  final match;
  const TeamFacts({Key key, this.match}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<SportsProvider>(
      builder: (context, _sportsProvider, child) {
        return Column(
          children: [
            Container(
              width: getSizeWidth(0.8, context),
              child: Text(
                "Fatos do time",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: getSizeHeight(0.05, context)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(children: [
                  Container(
                    width: getSizeWidth(0.8, context),
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                        match.team_a_image,
                                      ),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(50)),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              match.team_a,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "1.",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Container(
                              width: getSizeWidth(0.5, context),
                              child: Text(
                                "Perdeu 6 jogos seguidos",
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "2.",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Container(
                              width: getSizeWidth(0.5, context),
                              child: Text(
                                "Sequência de derrotas de 4 jogos em casa",
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "3.",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Container(
                              width: getSizeWidth(0.5, context),
                              child: Text(
                                "Marcou apenas 1 gol nos últimos 4 jogos",
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "4.",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Container(
                              width: getSizeWidth(0.5, context),
                              child: Text(
                                "Quando perdem por 1-0 for, eles vecem 40% dos seus jogos",
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "5.",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Container(
                              width: getSizeWidth(0.5, context),
                              child: Text(
                                "Vencem o primeiro tempo em 16% de suas partidas",
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "6.",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Container(
                              width: getSizeWidth(0.5, context),
                              child: Text(
                                "Marcam 75% dos seus gols no segundo tempo",
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("Ver mais"),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: getSizeWidth(0.09, context),
                              width: getSizeWidth(0.15, context),
                              child: Icon(
                                Icons.arrow_forward,
                                color: blackColor,
                                size: getSizeWidth(0.07, context),
                              ),
                              decoration: BoxDecoration(
                                  color: yellowColor,
                                  borderRadius: BorderRadius.circular(50)),
                            ),
                            SizedBox(
                              width: 20,
                            ),
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
                    width: 20,
                  ),
                  Container(
                    width: getSizeWidth(0.6, context),
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                        match.team_b_image,
                                      ),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(50)),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              match.team_b,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "1.",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Container(
                              width: getSizeWidth(0.5, context),
                              child: Text(
                                "Perdeu 6 jogos seguidos",
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "2.",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Container(
                              width: getSizeWidth(0.5, context),
                              child: Text(
                                "Sequência de derrotas de 4 jogos em casa",
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "3.",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Container(
                              width: getSizeWidth(0.5, context),
                              child: Text(
                                "Marcou apenas 1 gol nos últimos 4 jogos",
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "4.",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Container(
                              width: getSizeWidth(0.5, context),
                              child: Text(
                                "Quando perdem por 1-0 for, eles vecem 40% dos seus jogos",
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "5.",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Container(
                              width: getSizeWidth(0.5, context),
                              child: Text(
                                "Vencem o primeiro tempo em 16% de suas partidas",
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "6.",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Container(
                              width: getSizeWidth(0.5, context),
                              child: Text(
                                "Marcam 75% dos seus gols no segundo tempo",
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("Ver mais"),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: getSizeWidth(0.09, context),
                              width: getSizeWidth(0.15, context),
                              child: Icon(
                                Icons.arrow_forward,
                                color: blackColor,
                                size: getSizeWidth(0.07, context),
                              ),
                              decoration: BoxDecoration(
                                  color: yellowColor,
                                  borderRadius: BorderRadius.circular(50)),
                            ),
                            SizedBox(
                              width: 20,
                            ),
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
                ]),
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
