import 'package:flutter/material.dart';
import 'package:imperio/constants/constants.dart';

class SearchSports extends StatelessWidget {
  const SearchSports({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
      ],
    );
  }
}
