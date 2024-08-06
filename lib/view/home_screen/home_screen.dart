import 'package:flutter/material.dart';
import 'package:imperio/constants/constants.dart';
import 'package:imperio/controller/bets_controller.dart';
import 'package:imperio/controller/matches_controller.dart';
import 'package:imperio/controller/sports_controller.dart';
import 'package:imperio/provider/sports_provider.dart';
import 'package:imperio/utils/utils.dart';
import 'package:imperio/view/home_screen/widgets/all_matches_button.dart';
import 'package:imperio/view/home_screen/widgets/banner_list_home.dart';
import 'package:imperio/view/home_screen/widgets/bonus_bet.dart';
import 'package:imperio/view/home_screen/widgets/card_match.dart';
import 'package:imperio/view/home_screen/widgets/day_panel.dart';
import 'package:imperio/view/home_screen/widgets/imperio_logo.dart';
import 'package:imperio/view/home_screen/widgets/menu_options.dart';
import 'package:imperio/view/home_screen/widgets/navigator_home.dart';
import 'package:imperio/view/home_screen/widgets/popular_championships.dart';
import 'package:imperio/view/home_screen/widgets/tips_panel.dart';
import 'package:imperio/view/home_screen/widgets/won_bets.dart';
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
    await _sportsController.getSports(context);
    await _sportsController.getChampionships(context);
    await _matchesController.getMatches(context);
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
      bottomSheet: NavigatorHome(),
      body: Container(
        padding: EdgeInsets.symmetric(
          vertical: 40,
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          lightYellowColor,
          whiteColor,
          whiteColor,
          whiteColor,
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: Consumer<SportsProvider>(
          builder: (context, _sportsProvider, child) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  _sportsProvider.listChampionship.length == 0 ||
                          _sportsProvider.listMatches.length == 0 ||
                          _sportsProvider.listSports.length == 0 ||
                          _sportsProvider.listWonBets.length == 0 ||
                          _sportsProvider.listTips.length == 0
                      ? Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [Utils.getLoadingWidget(blackColor)],
                          ),
                        )
                      : Column(
                          children: [
                            ImperioLogo(),
                            MenuOptions(),
                            BannerListHome(),
                            PopularChampionships(),
                            DayPanel(),
                            CardMatch(),
                            AllMatchesButton(),
                            TipsPanel(),
                            BonusBet(),
                            WonBets(),
                            ImperioLogo(),
                            SizedBox(
                              height: 100,
                            )
                          ],
                        )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
