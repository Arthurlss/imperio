import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:imperio/constants/constants.dart';
import 'package:imperio/utils/utils.dart';

class EmailScreen extends StatefulWidget {
  const EmailScreen({Key key}) : super(key: key);

  @override
  State<EmailScreen> createState() => _EmailScreenState();
}

class _EmailScreenState extends State<EmailScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
        child: Form(
          key: _formKey,
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
                    child: Icon(
                      Icons.arrow_back,
                      color: blackColor,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: getSizeWidth(0.9, context),
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "Qual o seu e-mail?",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              getEmailField(),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  if (_formKey.currentState.validate()) {
                    //Utils.goToPage(context: context, page: page)
                  }
                },
                child: Container(
                  width: 400,
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
        ),
      ),
    );
  }

  getEmailField() {
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

              var newEmailAux = value.replaceAll(" ", "");
              var _checkEmail = EmailValidator.validate(newEmailAux);
              if (_checkEmail == false) {
                return "E-mail inválido";
              } else {
                setState(() {
                  _emailController.text = newEmailAux;
                });
              }
              return null;
            },
            controller: _emailController,
            style: TextStyle(fontWeight: FontWeight.bold),
            decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                  color: Colors.transparent,
                )),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                  color: Colors.transparent,
                )),
                hintText: 'E-mail'),
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
