import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:imperio/provider/sports_provider.dart';
import 'package:provider/provider.dart';

class PopularChampionships extends StatelessWidget {
  const PopularChampionships({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<SportsProvider>(
      builder: (context, _sportsProvider, child) {
        return Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 10),
              width: double.infinity,
              child: Text(
                "Campeonatos populares",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: _sportsProvider.listChampionship.map<Widget>((e) {
                  return Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 120,
                        width: 120,
                        padding: EdgeInsets.all(20),
                        child: Image.network(
                          e.image,
                          fit: BoxFit.cover,
                        ),
                        decoration: BoxDecoration(
                          color: HexColor('#f3f0d8'),
                          borderRadius: BorderRadius.circular(40),
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
