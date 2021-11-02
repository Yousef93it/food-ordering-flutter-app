import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final Color color;
  final String text;
  final Widget icon;
  final GestureTapCallback press;

  const SocialButton(
      {Key key,
      @required this.color,
      @required this.icon,
      @required this.press,
      @required this.text})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    const padding = EdgeInsets.symmetric(horizontal: 16, vertical: 8);
    return SizedBox(
      width: double.infinity,
      child: Platform.isIOS
          ? CupertinoButton(
              padding: padding,
              color: color,
              child: buildButtonContent(context),
              onPressed: press,
            )
          : FlatButton(
              padding: padding,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              color: color,
              onPressed: press,
              child: buildButtonContent(context),
            ),
    );
  }

  Row buildButtonContent(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(7),
          height: 28,
          width: 28,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(4)),
          ),
          child: icon,
        ),
        // HorizontalSpacing(of: 40),
        const Spacer(flex: 2),
        Text(
          text.toUpperCase(),
          style: Theme.of(context)
              .textTheme
              .caption
              .copyWith(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        const Spacer(flex: 3),
      ],
    );
  }
}
