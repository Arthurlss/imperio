import 'package:flutter/material.dart';
import 'package:imperio/constants/constants.dart';
import 'package:imperio/provider/sports_provider.dart';
import 'package:provider/provider.dart';

class WonBets extends StatelessWidget {
  const WonBets({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<SportsProvider>(
      builder: (context, _sportsProvider, child) {
        return Column(
          children: [
            Container(
              width: getSizeWidth(0.8, context),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/bet-fire.png'))),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    child: Text(
                      "Últimas apostas ganhas",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[800],
                          fontSize: getSizeWidth(0.05, context)),
                    ),
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
                children: _sportsProvider.listWonBets.map<Widget>((e) {
                  return Row(
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),
                        child: Container(
                          padding: EdgeInsets.all(20),
                          width: 300,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(70),
                                    color: blackColor,
                                    image: DecorationImage(
                                        image: NetworkImage(e.user_avatar),
                                        fit: BoxFit.cover)),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      e.user,
                                    ),
                                    Text(
                                      'Mais de 2.6 Goals',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize:
                                              getSizeWidth(0.06, context)),
                                    ),
                                    Text(
                                      e.platform,
                                      maxLines: 1,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/bet-bet365.png'))),
                                  ),
                                  Text(
                                    '1.44',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
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
