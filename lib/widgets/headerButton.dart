import 'package:flutter/material.dart';

Widget headerButton({
  String buttonText,
  IconData buttonIcon,
  void Function() buttonAction,
  Color buttonColor,
}) {
  return FlatButton.icon(
    onPressed: buttonAction,
    icon: Icon(
      buttonIcon,
      color: buttonColor,
    ),
    label: Text(buttonText),
  );
}
