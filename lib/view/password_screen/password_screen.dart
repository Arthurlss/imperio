import 'package:flutter/material.dart';
import 'package:imperio/constants/constants.dart';
import 'package:imperio/utils/utils.dart';
import 'package:imperio/view/home_screen/home_screen.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({Key key}) : super(key: key);

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _passwordController = TextEditingController();
  bool isPasswordVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: whiteColor,
        leading: InkWell(
          onTap: () {
            Utils.popPage(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: blackColor,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Container(
                width: getSizeWidth(0.9, context),
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "Qual sua senha?",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              getPasswordField(),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      if (_formKey.currentState.validate()) {
                        Utils.goToPage(context: context, page: HomeScreen());
                      }
                    },
                    child: Container(
                      width: getSizeWidth(0.75, context),
                      height: 70,
                      child: Center(
                        child: Text(
                          "Continuar",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: yellowColor),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  getPasswordField() {
    return Column(
      children: [
        Container(
          width: getSizeWidth(0.9, context),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(width: 1, color: blackColor)),
          child: TextFormField(
            validator: (value) {
              if (value == null || value == "") {
                return "Campo Obrigatório";
              }

              return null;
            },
            obscureText: isPasswordVisible,
            controller: _passwordController,
            style: TextStyle(fontWeight: FontWeight.bold),
            decoration: InputDecoration(
                suffixIcon: InkWell(
                  onTap: () {
                    setState(() {
                      isPasswordVisible = !isPasswordVisible;
                    });
                  },
                  child: Icon(
                    isPasswordVisible
                        ? Icons.visibility_off_outlined
                        : Icons.visibility_outlined,
                    color: blackColor,
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                  color: Colors.transparent,
                )),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                  color: Colors.transparent,
                )),
                hintText: 'Senha'),
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
