import 'package:flutter/material.dart';
import 'package:imperio/constants/constants.dart';
import 'package:imperio/view/login_screen/widgets/apple_button.dart';
import 'package:imperio/view/login_screen/widgets/banner_login.dart';
import 'package:imperio/view/login_screen/widgets/email_button.dart';
import 'package:imperio/view/login_screen/widgets/google_button.dart';
import 'package:imperio/view/login_screen/widgets/phone_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              BannerLogin(),
              GoogleButton(),
              AppleButton(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: getSizeWidth(0.25, context),
                    height: 1,
                    color: Colors.grey[400],
                  ),
                  Text(
                    'ou entre com',
                  ),
                  Container(
                    width: getSizeWidth(0.25, context),
                    height: 1,
                    color: Colors.grey[400],
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  EmailButton(),
                  SizedBox(
                    width: 30,
                  ),
                  PhoneButton()
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
