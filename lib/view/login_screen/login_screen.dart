import 'package:flutter/material.dart';
import 'package:imperio/constants/constants.dart';
import 'package:imperio/view/login_screen/widgets/apple_button.dart';
import 'package:imperio/view/login_screen/widgets/banner_login.dart';
import 'package:imperio/view/login_screen/widgets/email_button.dart';
import 'package:imperio/view/login_screen/widgets/google_button.dart';
import 'package:imperio/view/login_screen/widgets/phone_button.dart';

//Página de estruturação dos componentes da tela de login
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
              //Componente da imagem da tela de login
              BannerLogin(),
              //Botão de acesso via google
              GoogleButton(),
              //Botão de acesso via apple
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
                  //Botão para cadastro de email
                  EmailButton(),
                  SizedBox(
                    width: 30,
                  ),
                  //Botão para acesso com telefone
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
