import 'package:flutter/material.dart';
import 'package:imperio/constants/constants.dart';
import 'package:imperio/utils/utils.dart';

class HeaderMatchDetail extends StatelessWidget {
  const HeaderMatchDetail({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Row(
            children: [
              //Botão de voltar
              InkWell(
                onTap: () {
                  Utils.popPage(context);
                },
                child: Container(
                  height: getSizeWidth(0.1, context),
                  width: getSizeWidth(0.1, context),
                  child: Center(
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: blackColor,
                      size: getSizeWidth(0.05, context),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: yellowColor,
                      borderRadius: BorderRadius.circular(50)),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "Partida",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: blackColor,
                    fontSize: getSizeWidth(0.06, context)),
              ),
            ],
          ),
          Divider(),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
