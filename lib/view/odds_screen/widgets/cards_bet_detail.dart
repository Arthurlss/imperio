import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:imperio/constants/constants.dart';

class CardsBetDetail extends StatelessWidget {
  const CardsBetDetail({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(bottom: 10),
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 80,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage('assets/images/xbet-icon.png'),
                      )),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/icon.png'),
                              fit: BoxFit.cover)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: blackColor),
                            child: Text(
                              "ODDS MAIS ALTA",
                              style: TextStyle(
                                  color: whiteColor,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Ambos times marcarão",
                            style: TextStyle(
                                fontSize: getSizeHeight(0.019, context)),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Divider()
                        ],
                      ),
                    )),
                    Text("3.10")
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Marcar mais de 4 gols",
                            style: TextStyle(
                                fontSize: getSizeHeight(0.019, context)),
                          ),
                        ],
                      ),
                    )),
                    Text("3.10")
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: HexColor('#c0c4c2'),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(bottom: 10),
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 80,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage('assets/images/betsafe-icon.png'),
                      )),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/icon.png'),
                              fit: BoxFit.cover)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: blackColor),
                            child: Text(
                              "ODDS MAIS ALTA",
                              style: TextStyle(
                                  color: whiteColor,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Ambos times marcarão",
                            style: TextStyle(
                                fontSize: getSizeHeight(0.019, context)),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Divider()
                        ],
                      ),
                    )),
                    Text("3.10")
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Marcar mais de 4 gols",
                            style: TextStyle(
                                fontSize: getSizeHeight(0.019, context)),
                          ),
                        ],
                      ),
                    )),
                    Text("3.10")
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: HexColor('#c0c4c2'),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(bottom: 10),
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 80,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage('assets/images/icon-betsson.png'),
                      )),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/icon.png'),
                              fit: BoxFit.cover)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: blackColor),
                            child: Text(
                              "ODDS MAIS ALTA",
                              style: TextStyle(
                                  color: whiteColor,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Ambos times marcarão",
                            style: TextStyle(
                                fontSize: getSizeHeight(0.019, context)),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Divider()
                        ],
                      ),
                    )),
                    Text("3.10")
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Marcar mais de 4 gols",
                            style: TextStyle(
                                fontSize: getSizeHeight(0.019, context)),
                          ),
                        ],
                      ),
                    )),
                    Text("3.10")
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: HexColor('#c0c4c2'),
            ),
          ),
        ],
      ),
    );
  }
}
