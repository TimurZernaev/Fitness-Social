import 'package:flutter/material.dart';

void navPush(BuildContext context, Widget screen) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => screen,
    ),
  );
}

void navPushReplace(BuildContext context, Widget screen) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (context) => screen,
    ),
  );
}
