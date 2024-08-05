import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:imperio/constants/constants.dart';
import 'package:imperio/provider/sports_provider.dart';
import 'package:imperio/utils/utils.dart';
import 'package:provider/provider.dart';

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
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Utils.popPage(context);
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: blackColor,
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
                    "Esportes",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: blackColor,
                        fontSize: 25),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50), color: whiteColor),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Pesquisar...',
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.transparent,
                      )),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.transparent,
                      )),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey[800],
                      )),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Consumer<SportsProvider>(
                builder: (context, _sportsProvider, child) {
                  return Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    width: 400,
                    height: 400,
                    child: GridView.count(
                      crossAxisCount: 3,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                      physics: NeverScrollableScrollPhysics(),
                      children: _sportsProvider.listSports.map<Widget>((item) {
                        return Container(
                          width: 50,
                          height: 50,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(item.image))),
                              ),
                              Text(item.name),
                            ],
                          ),
                          decoration: BoxDecoration(
                              color: HexColor('#f3f0d8'),
                              borderRadius: BorderRadius.circular(20)),
                        );
                      }).toList(),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
