import 'package:flutter/material.dart';
import 'package:imperio/constants/constants.dart';
import 'package:imperio/utils/utils.dart';
import 'package:imperio/view/menu_screen/navigator_menu.dart';
import 'package:imperio/view/menu_screen/widgets/header_menu.dart';
import 'package:imperio/view/sports_screen/sports_screen.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: NavigatorMenu(),
      body: Container(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeaderMenu(),
              getTile('assets/images/icon-home.png', 'Início'),
              InkWell(
                  onTap: () {
                    Utils.goToPage(context: context, page: SportsScreen());
                  },
                  child: getTile('assets/images/icon-sports.png', 'Esportes')),
              getTile('assets/images/icon-news.png', 'Notícias e Dicas'),
              getTile('assets/images/icon-favorites.png', 'Favoritos'),
              getTile('assets/images/icon-influencers.png', 'Influenciadores'),
              getTile('assets/images/icon-odds.png', 'Comparador de odds'),
              Divider(),
              getTile('assets/images/icon-good-game.png', 'Jogo consciente'),
              getTile(
                  'assets/images/icon-security.png', "Privacidade e segurança"),
            ],
          ),
        ),
      ),
    );
  }

  Widget getTile(icon, title) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: getSizeWidth(0.07, context),
              width: getSizeWidth(0.07, context),
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(icon))),
            ),
            SizedBox(
              width: 30,
            ),
            Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800],
                  fontSize: getSizeWidth(0.05, context)),
            )
          ],
        ),
        SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
