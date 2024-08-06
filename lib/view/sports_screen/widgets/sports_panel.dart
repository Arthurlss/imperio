import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:imperio/provider/sports_provider.dart';
import 'package:provider/provider.dart';

class SportsPanel extends StatelessWidget {
  const SportsPanel({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Consumer<SportsProvider>(
          builder: (context, _sportsProvider, child) {
            return Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              width: 400,
              height: 400,
              child: GridView.count(
                crossAxisCount: 3,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                physics: NeverScrollableScrollPhysics(),
                children: _sportsProvider.listSports.map<Widget>((item) {
                  return Container(
                    width: 50,
                    height: 50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(item.image))),
                        ),
                        Text(item.name),
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: HexColor('#f3f0d8'),
                        borderRadius: BorderRadius.circular(20)),
                  );
                }).toList(),
              ),
            );
          },
        )
      ],
    );
  }
}
