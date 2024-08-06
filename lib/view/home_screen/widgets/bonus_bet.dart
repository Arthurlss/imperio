import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:imperio/constants/constants.dart';

class BonusBet extends StatefulWidget {
  const BonusBet({Key key}) : super(key: key);

  @override
  State<BonusBet> createState() => _BonusBetState();
}

class _BonusBetState extends State<BonusBet> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: getSizeWidth(0.8, context),
          child: Row(
            children: [
              Text(
                "Principais bônus de aposta",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],
                    fontSize: getSizeWidth(0.06, context)),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: getSizeWidth(0.9, context),
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: getSizeWidth(0.04, context)),
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/bet-stake.png'))),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: getSizeWidth(0.5, context),
                child: Text(
                  "Exclusivo 10% de Retorno e 200% de Bônus de Boas-Vindas até \$ 1000 em Crypto",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: getSizeWidth(0.035, context)),
                ),
              )
            ],
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: HexColor('#f3f0d8'),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: getSizeWidth(0.9, context),
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: getSizeWidth(0.04, context)),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/bet-bet365.png'))),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: getSizeWidth(0.5, context),
                child: Text(
                  "Créditos de Aposta até R\$200 na hora!",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: getSizeWidth(0.035, context)),
                ),
              )
            ],
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: HexColor('#f3f0d8'),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: getSizeWidth(0.8, context),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Veja mais bônus disponíveis",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],
                    fontSize: getSizeWidth(0.045, context)),
              ),
              SizedBox(
                width: 10,
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
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
