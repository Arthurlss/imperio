import 'package:flutter/material.dart';
import 'package:imperio/constants/constants.dart';
import 'package:imperio/provider/sports_provider.dart';
import 'package:imperio/utils/utils.dart';
import 'package:provider/provider.dart';

class MatchInformation extends StatelessWidget {
  const MatchInformation({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<SportsProvider>(
      builder: (context, _sportsProvider, child) {
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Informações do jogo",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: getSizeWidth(0.08, context)),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Premiere",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: getSizeWidth(0.04, context)),
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/icon-paramout.png'))),
                            ),
                          ],
                        ),
                      )),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                          child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Paramout",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: getSizeWidth(0.04, context)),
                            ),
                            Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/icon.png')))),
                          ],
                        ),
                      )),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: ListTile(
                    title: Text(
                      'Data',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: getSizeWidth(0.04, context)),
                    ),
                    trailing: Text(
                      Utils.getDateFormated(_sportsProvider.matchDetail.date),
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: getSizeWidth(0.04, context)),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: ListTile(
                    title: Text(
                      'Estádio',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: getSizeWidth(0.04, context)),
                    ),
                    trailing: Text(
                      _sportsProvider.matchDetail.stadium,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: getSizeWidth(0.04, context)),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Árbitro",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              _sportsProvider.matchDetail.referee,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: getSizeWidth(0.045, context)),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Média de cartões",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 30,
                                  width: getSizeWidth(0.15, context),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7),
                                      color: Colors.red.withOpacity(0.4)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '1.4',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        height: 15,
                                        width: 8,
                                        color: Colors.red,
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 30,
                                  width: getSizeWidth(0.15, context),
                                  decoration: BoxDecoration(),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "1.4",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        height: 15,
                                        width: 8,
                                        color: Colors.yellow,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
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
