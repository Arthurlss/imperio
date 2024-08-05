import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:imperio/constants/constants.dart';
import 'package:imperio/controller/bets_controller.dart';
import 'package:imperio/controller/matches_controller.dart';
import 'package:imperio/controller/sports_controller.dart';
import 'package:imperio/provider/sports_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List listSports = [];
  List listBanners = [];

  SportsController _sportsController = SportsController();
  MatchesController _matchesController = MatchesController();
  BetsController _betsController = BetsController();

  loadData() async {
    await _betsController.getTips(context);
    await _betsController.getWonBets(context);
    setState(() {
      listSports.add('assets/images/all-sports.png');
      listSports.add('assets/images/soccer-sports.png');
      listSports.add('assets/images/basketball-sports.png');
      listSports.add('assets/images/esports-sports.png');
      listBanners.add(1);
      listBanners.add(1);
      listBanners.add(1);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: getBottomNavigation(),
      body: Container(
        padding: EdgeInsets.symmetric(
          vertical: 40,
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [lightYellowColor, whiteColor],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: Consumer<SportsProvider>(
          builder: (context, _sportsProvider, child) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: getSizeWidth(0.4, context),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/imperio-name.png'))),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: listSports.map<Widget>((e) {
                        return Row(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              height: 50,
                              child: Image.asset(e, fit: BoxFit.cover),
                            ),
                            SizedBox(
                              width: 20,
                            )
                          ],
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(children: [
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 300,
                        width: 400,
                        child: Stack(
                          children: [
                            Positioned(
                              bottom: 0,
                              child: Container(
                                height: 250,
                                width: 400,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: yellowColor),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 30,
                                      top: 50,
                                      child: Text(
                                        "Campeonatos\nPopulares",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 30),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              right: 0,
                              bottom: 0,
                              child: Container(
                                height: 300,
                                width: 300,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/soccer-man.png'),
                                        fit: BoxFit.cover)),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 300,
                        width: 400,
                        child: Stack(
                          children: [
                            Positioned(
                              bottom: 0,
                              child: Container(
                                height: 250,
                                width: 400,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: darkGreyColor),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 30,
                                      top: 50,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "NBA",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 30),
                                          ),
                                          Text(
                                            "National Basketball\nAssociation",
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.grey[800]),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              right: 0,
                              bottom: 0,
                              child: Container(
                                height: 300,
                                width: 400,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/basketball-man.png'),
                                        fit: BoxFit.cover)),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 300,
                        width: 400,
                        child: Stack(
                          children: [
                            Positioned(
                              bottom: 0,
                              child: Container(
                                height: 250,
                                width: 400,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: greyColor),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 30,
                                      top: 50,
                                      child: Text(
                                        "League\nof its Own",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 30),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              right: 0,
                              top: 40,
                              child: Container(
                                height: 190,
                                width: 180,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/egames-image.png'),
                                        fit: BoxFit.fitHeight)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ]),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    width: double.infinity,
                    child: Text(
                      "Campeonatos populares",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
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
                      children: [
                        Container(
                          height: 120,
                          width: 120,
                          padding: EdgeInsets.all(20),
                          child: Image.asset(
                            'assets/images/europa-league-image.png',
                            fit: BoxFit.cover,
                          ),
                          decoration: BoxDecoration(
                            color: HexColor('#f3f0d8'),
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 120,
                          width: 120,
                          padding: EdgeInsets.all(20),
                          child: Image.asset(
                            'assets/images/laliga-image.png',
                            fit: BoxFit.cover,
                          ),
                          decoration: BoxDecoration(
                            color: HexColor('#f3f0d8'),
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 120,
                          width: 120,
                          padding: EdgeInsets.all(20),
                          child: Image.asset(
                            'assets/images/seriaa-image.png',
                            fit: BoxFit.cover,
                          ),
                          decoration: BoxDecoration(
                            color: HexColor('#f3f0d8'),
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 120,
                          width: 120,
                          padding: EdgeInsets.all(20),
                          child: Image.asset(
                            'assets/images/champions-image.png',
                            fit: BoxFit.cover,
                          ),
                          decoration: BoxDecoration(
                            color: HexColor('#f3f0d8'),
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(children: [
                      SizedBox(
                        width: 40,
                      ),
                      Container(
                        height: 80,
                        width: 120,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.pink[200]),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Live",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: whiteColor,
                                  fontSize: 20),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: blackColor),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 80,
                        width: 120,
                        child: Center(
                          child: Text(
                            "Hoje",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(width: 2, color: darkGreyColor)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 80,
                        width: 120,
                        child: Center(
                          child: Text(
                            "01/11",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(width: 2, color: darkGreyColor)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 80,
                        width: 120,
                        child: Center(
                          child: Text(
                            "02/11",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(width: 2, color: darkGreyColor)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 80,
                        width: 120,
                        child: Center(
                          child: Text(
                            "03/11",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(width: 2, color: darkGreyColor)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ]),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: getSizeWidth(0.8, context),
                    height: getSizeHeight(0.5, context),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/card-match.jpg'),
                            fit: BoxFit.fitWidth),
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
                  Container(
                    width: getSizeWidth(0.8, context),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Acompanhe todas as partidas",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[800],
                              fontSize: 20),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 70,
                          width: 100,
                          child: Icon(
                            Icons.arrow_forward,
                            color: blackColor,
                            size: 35,
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
                  Container(
                    width: getSizeWidth(0.8, context),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Dicas",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: blackColor,
                              fontSize: 20),
                        ),
                        Text(
                          "Ver todas",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: blackColor,
                              fontSize: 20),
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
                      children: _sportsProvider.listTips.map<Widget>((e) {
                        return Row(
                          children: [
                            SizedBox(
                              width: 40,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 8,
                                      blurStyle: BlurStyle.outer,
                                    ),
                                  ]),
                              child: Column(
                                children: [
                                  Container(
                                    height: 200,
                                    width: 300,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(e.image),
                                            fit: BoxFit.cover),
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(50),
                                            topRight: Radius.circular(50)),
                                        color: blackColor),
                                  ),
                                  Container(
                                    height: 210,
                                    width: 300,
                                    padding: EdgeInsets.all(20),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          e.title,
                                          maxLines: 2,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 25),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          e.description,
                                          maxLines: 2,
                                          style: TextStyle(fontSize: 15),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 10, horizontal: 20),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    height: 20,
                                                    width: 20,
                                                    child: Image.asset(
                                                      'assets/images/ball-soccer.png',
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(
                                                    "Futebol",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ],
                                              ),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                  border: Border.all(
                                                      width: 2,
                                                      color: blackColor)),
                                            ),
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 10, horizontal: 20),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    height: 20,
                                                    width: 20,
                                                    child: Image.asset(
                                                      'assets/images/ball-basket.png',
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(
                                                    "Basquete",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ],
                                              ),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                  border: Border.all(
                                                      width: 2,
                                                      color: blackColor)),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(50),
                                            bottomRight: Radius.circular(50)),
                                        color: whiteColor),
                                  ),
                                ],
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
                  Container(
                    width: getSizeWidth(0.8, context),
                    child: Row(
                      children: [
                        Text(
                          "Principais bônus de aposta",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[800],
                              fontSize: 30),
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
                          margin: EdgeInsets.only(left: 40, right: 30),
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/bet-stake.png'))),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 300,
                          child: Text(
                            "Exclusivo 10% de Retorno e 200% de Bônus de Boas-Vindas até \$ 1000 em Crypto",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
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
                          margin: EdgeInsets.only(left: 40, right: 30),
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/bet-bet365.png'))),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 300,
                          child: Text(
                            "Créditos de Aposta até R\$200 na hora!",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
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
                              fontSize: 20),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 70,
                          width: 100,
                          child: Icon(
                            Icons.arrow_forward,
                            color: blackColor,
                            size: 35,
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
                  Container(
                    width: getSizeWidth(0.8, context),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/bet-fire.png'))),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          child: Row(
                            children: [
                              Text(
                                "Últimas apostas ganhas",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[800],
                                    fontSize: 30),
                              ),
                            ],
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
                                height: 110,
                                width: 450,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(70),
                                          color: blackColor,
                                          image: DecorationImage(
                                              image:
                                                  NetworkImage(e.user_avatar),
                                              fit: BoxFit.cover)),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            e.user,
                                          ),
                                          Text(
                                            'Mais de 2.6 Goals',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 25),
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                    height: 100,
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget getBottomNavigation() {
    return Container(
      height: 100,
      width: double.infinity,
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 10,
          ),
          Container(
            height: 50,
            width: 50,
            child: Icon(
              Icons.menu,
              color: whiteColor,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(70), color: blackColor),
          ),
          Container(
            height: 50,
            width: 250,
            padding: EdgeInsets.all(5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 45,
                  width: 45,
                  padding: EdgeInsets.all(10),
                  child: Image.asset('assets/images/house-icon-black.png'),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(70),
                      color: yellowColor),
                ),
                Container(
                  height: 45,
                  width: 45,
                  padding: EdgeInsets.all(10),
                  child: Image.asset('assets/images/whistle-icon-white.png'),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(70),
                      color: blackColor),
                ),
                Container(
                  height: 45,
                  width: 45,
                  padding: EdgeInsets.all(10),
                  child: Image.asset('assets/images/flag-icon.png'),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(70),
                      color: blackColor),
                ),
              ],
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50), color: blackColor),
          ),
          Container(
            height: 50,
            width: 50,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border.all(width: 2, color: blackColor),
                borderRadius: BorderRadius.circular(70),
                color: blackColor,
                image: DecorationImage(
                    image: AssetImage('assets/images/avatar.png'),
                    fit: BoxFit.cover)),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
