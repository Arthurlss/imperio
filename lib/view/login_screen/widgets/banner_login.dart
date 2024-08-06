import 'package:flutter/material.dart';
import 'package:imperio/constants/constants.dart';

//Banner da tela de login
class BannerLogin extends StatelessWidget {
  const BannerLogin({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: getSizeHeight(0.5, context),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.red,
          image: DecorationImage(
              image: AssetImage('assets/images/man-phone.jpg'),
              fit: BoxFit.cover)),
      child: Stack(
        children: [
          Positioned(
            bottom: getSizeHeight(0.1, context),
            left: getSizeWidth(0.05, context),
            child: Text(
              "Entre\nem sua conta",
              style: TextStyle(
                  color: whiteColor, fontSize: getSizeHeight(0.04, context)),
            ),
          ),
          Positioned(
            bottom: getSizeHeight(0.05, context),
            left: getSizeWidth(0.05, context),
            child: Text(
              "Acompanhe seu jogos,\ncampeonatos e times favoritos",
              style: TextStyle(
                  color: whiteColor, fontSize: getSizeHeight(0.02, context)),
            ),
          ),
        ],
      ),
    );
  }
}
