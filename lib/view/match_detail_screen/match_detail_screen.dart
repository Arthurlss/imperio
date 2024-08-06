import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:imperio/provider/sports_provider.dart';
import 'package:imperio/view/home_screen/widgets/won_bets.dart';
import 'package:imperio/view/match_detail_screen/widgets/card_match_detail.dart';
import 'package:imperio/view/match_detail_screen/widgets/header_match_detail.dart';
import 'package:imperio/view/match_detail_screen/widgets/last_matches.dart';
import 'package:imperio/view/match_detail_screen/widgets/last_matchs_resume.dart';
import 'package:imperio/view/match_detail_screen/widgets/match_information.dart';
import 'package:imperio/view/match_detail_screen/widgets/odds_panel.dart';
import 'package:imperio/view/match_detail_screen/widgets/referee_facts.dart';
import 'package:imperio/view/match_detail_screen/widgets/team_facts.dart';
import 'package:provider/provider.dart';

class MatchDetailScreen extends StatefulWidget {
  final match;
  const MatchDetailScreen({Key key, this.match}) : super(key: key);

  @override
  State<MatchDetailScreen> createState() => _MatchDetailScreenState();
}

class _MatchDetailScreenState extends State<MatchDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<SportsProvider>(
        builder: (context, _sportsProvider, child) {
          return Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  HeaderMatchDetail(),
                  CardMatchDetail(match: widget.match),
                  MatchInformation(),
                  TeamFacts(match: widget.match),
                  RefereeFacts(),
                  WonBets(),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    color: HexColor('#646e69'),
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        LastMatchesResume(match: widget.match),
                        LastMatches(
                          match: widget.match,
                        ),
                        OddsPanel()
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
