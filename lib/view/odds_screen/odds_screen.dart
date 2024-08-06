import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:imperio/constants/constants.dart';
import 'package:imperio/view/odds_screen/widgets/card_bet.dart';
import 'package:imperio/view/odds_screen/widgets/cards_bet_detail.dart';
import 'package:imperio/view/odds_screen/widgets/odds_panel_detail.dart';

class OddsScreen extends StatefulWidget {
  final match;
  const OddsScreen({Key key, this.match}) : super(key: key);

  @override
  State<OddsScreen> createState() => _OddsScreenState();
}

class _OddsScreenState extends State<OddsScreen> {
  bool _check = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                decoration: BoxDecoration(
                    color: HexColor('#dee0df'),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50))),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              _check = false;
                            });
                          },
                          child: Container(
                            height: 50,
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                                border: Border.all(width: 1, color: blackColor),
                                borderRadius: BorderRadius.circular(50),
                                color:
                                    _check ? Colors.transparent : blackColor),
                            child: Center(
                              child: Text(
                                "Odds mais altas",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: _check ? blackColor : whiteColor),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              _check = true;
                            });
                          },
                          child: Container(
                            height: 50,
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                                color: _check ? blackColor : Colors.transparent,
                                borderRadius: BorderRadius.circular(50),
                                border:
                                    Border.all(width: 1, color: blackColor)),
                            child: Center(
                              child: Text(
                                "Outras odds",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: _check ? whiteColor : blackColor),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    _check ? getOthersBets() : getHighBets()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget getOthersBets() {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        CardsBetDetail()
      ],
    );
  }

  Widget getHighBets() {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        OddsPanelDetail(),
        SizedBox(
          height: 20,
        ),
        CardBet(
          match: widget.match,
        )
      ],
    );
  }
}

//#dee0df
//#c0c4c2
