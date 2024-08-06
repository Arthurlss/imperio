import 'package:flutter/material.dart';
import 'package:imperio/constants/constants.dart';
import 'package:imperio/view/sports_screen/widgets/header_sports.dart';
import 'package:imperio/view/sports_screen/widgets/search_sports.dart';
import 'package:imperio/view/sports_screen/widgets/sports_panel.dart';

class SportsScreen extends StatefulWidget {
  const SportsScreen({Key key}) : super(key: key);

  @override
  State<SportsScreen> createState() => _SportsScreenState();
}

class _SportsScreenState extends State<SportsScreen> {
  loadData() async {}

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [lightYellowColor, whiteColor, whiteColor, whiteColor],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeaderSports(),
              SearchSports(),
              SportsPanel(),
            ],
          ),
        ),
      ),
    );
  }
}
