import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class WelcomeText extends StatelessWidget {
  final String title, text;

  const WelcomeText({Key key, @required this.title, @required this.text})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const VerticalSpacing(of: 10),
        Text(
          title,
          style: kH1TextStyle,
        ),
        const VerticalSpacing(of: 10),
        Text(text, style: kBodyTextStyle),
        const VerticalSpacing(),
      ],
    );
  }
}
