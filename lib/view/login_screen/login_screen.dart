import 'package:flutter/material.dart';
import 'package:imperio/constants/constants.dart';
import 'package:imperio/controller/auth_controller.dart';
import 'package:imperio/utils/utils.dart';
import 'package:imperio/view/email_screen/email_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  AuthController _authController = AuthController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: getSizeHeight(0.5, context),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.red,
                    image: DecorationImage(
                        image: AssetImage('assets/images/man-phone.jpg'),
                        fit: BoxFit.cover)),
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 80,
                      left: 30,
                      child: Text(
                        "Entre\nem sua conta",
                        style: TextStyle(color: whiteColor, fontSize: 40),
                      ),
                    ),
                    Positioned(
                      bottom: 30,
                      left: 30,
                      child: Text(
                        "Acompanhe seu jogos,\ncampeonatos e times favoritos",
                        style: TextStyle(color: whiteColor, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              InkWell(
                onTap: () async {
                  await _authController.login(context);
                },
                child: Container(
                  width: 400,
                  height: 70,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/icon-google.png'))),
                      ),
                      Text(
                        "Entrar com Google",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Container()
                    ],
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: greyColor),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () async {
                  await _authController.login(context);
                },
                child: Container(
                  width: 400,
                  height: 70,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/icon-apple.png'))),
                      ),
                      Text(
                        "Entrar com Apple",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: whiteColor),
                      ),
                      Container()
                    ],
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: blackColor),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 200,
                    height: 1,
                    color: Colors.grey[600],
                  ),
                  Text(
                    'ou entre com',
                  ),
                  Container(
                    width: 200,
                    height: 1,
                    color: Colors.grey[600],
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Utils.goToPage(context: context, page: EmailScreen());
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 30, horizontal: 70),
                      child: Text(
                        "Email",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: whiteColor,
                          border: Border.all(color: blackColor, width: 1)),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 30, horizontal: 70),
                    child: Text(
                      "Telefone",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: yellowColor,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
