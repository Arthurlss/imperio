import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final title;
  final color;
  final colorLetter;
  final icon;
  const CustomButton(
      {Key key,
      @required this.color,
      @required this.title,
      @required this.colorLetter,
      this.icon})
      : super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      padding: EdgeInsets.all(18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          widget.icon == null
              ? Container()
              : CircleAvatar(
                  child: Image.asset(widget.icon),
                  backgroundColor: Colors.white,
                ),
          Text(
            widget.title,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: widget.colorLetter,
                fontSize: getSize(0.02)),
          ),
        ],
      ),
      decoration: BoxDecoration(
          color: widget.color, borderRadius: BorderRadius.circular(20)),
    );
  }

  double getSize(number) {
    return MediaQuery.of(context).size.height * number;
  }
}
