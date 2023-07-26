import 'package:flutter/material.dart';
import 'constants.dart';

class iconContent extends StatelessWidget {
  final String cardtext;
  final IconData iconito;

  iconContent(this.cardtext, this.iconito);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconito,
          size: 80,
          color: Colors.white,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          cardtext,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
