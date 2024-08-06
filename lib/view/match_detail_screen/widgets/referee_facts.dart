import 'package:flutter/material.dart';
import 'package:imperio/constants/constants.dart';
import 'package:imperio/provider/sports_provider.dart';
import 'package:provider/provider.dart';

class RefereeFacts extends StatelessWidget {
  const RefereeFacts({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<SportsProvider>(
      builder: (context, _sportsProvider, child) {
        return Column(
          children: [
            Container(
              width: getSizeWidth(0.8, context),
              child: Text(
                "Fatos do árbitro",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: getSizeWidth(0.07, context)),
              ),
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
                    height: 40,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                _sportsProvider.matchDetail.referee_avatar),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(50)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    _sportsProvider.matchDetail.referee,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
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
                        width: getSizeWidth(0.6, context),
                        child: Text(
                          "Marcou cartão amarelo em todos os seus últmos 10 jogos",
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
                        width: getSizeWidth(0.6, context),
                        child: Text(
                          "Marca 80% mais cartões no segundo tempo",
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
                        width: getSizeWidth(0.6, context),
                        child: Text(
                          "Não deu nenhum cartão vermelho nos últimos 5 jogos",
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
                        width: getSizeWidth(0.6, context),
                        child: Text(
                          "Marcou 3 penaltis nos últimos 3 jogos",
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
              height: 20,
            ),
          ],
        );
      },
    );
  }
}
