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

//Detalhes de um jogo específico
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
                  //Cabeçalho da pagina
                  HeaderMatchDetail(),
                  //Card com o detalhamento do momento atual do jogo
                  CardMatchDetail(match: widget.match),
                  //Informações básicas do jogo
                  MatchInformation(),
                  //Fatos sobre os times
                  TeamFacts(match: widget.match),
                  //Fatos e informações sobre os árbitros
                  RefereeFacts(),
                  //Última bets ganhas
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
                        //Resumo dos últimos jogos
                        LastMatchesResume(match: widget.match),
                        //Últimos jogos
                        LastMatches(
                          match: widget.match,
                        ),
                        //Odds das partias de várias casas de apostas
                        OddsPanel(match: widget.match)
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
