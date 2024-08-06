import 'package:flutter/material.dart';
import 'package:imperio/constants/constants.dart';
import 'package:imperio/controller/auth_controller.dart';
import 'package:imperio/provider/sports_provider.dart';
import 'package:imperio/utils/utils.dart';
import 'package:provider/provider.dart';

class AppleButton extends StatefulWidget {
  const AppleButton({Key key}) : super(key: key);

  @override
  State<AppleButton> createState() => _AppleButtonState();
}

class _AppleButtonState extends State<AppleButton> {
  AuthController _authController = AuthController();

  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Consumer<SportsProvider>(
      builder: (context, _sportsProvider, child) {
        return Column(
          children: [
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () async {
                try {
                  onLoading();

                  await _authController.login(context);
                  offLoading();
                } catch (e) {
                  offLoading();
                }
              },
              child: Container(
                width: getSizeWidth(0.85, context),
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: getSizeWidth(0.1, context),
                      width: getSizeWidth(0.1, context),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage('assets/images/icon-apple.png'))),
                    ),
                    _isLoading
                        ? Container(
                            height: 50,
                            width: 50,
                            child: Utils.getLoadingWidget(whiteColor),
                          )
                        : Text(
                            "Entrar com Apple",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: whiteColor),
                          ),
                    Container()
                  ],
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30), color: blackColor),
              ),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        );
      },
    );
  }

  void onLoading() {
    setState(() {
      _isLoading = true;
    });
  }

  void offLoading() {
    setState(() {
      _isLoading = false;
    });
  }
}
