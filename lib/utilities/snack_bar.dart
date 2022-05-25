import 'package:flutter/material.dart';

void ShowSnackBar(BuildContext context, String position) {
  final scaffold = ScaffoldMessenger.of(context);
  scaffold.showSnackBar(
    SnackBar(
      content: Text(position),
      action: SnackBarAction(
          label: 'HIDE', onPressed: scaffold.hideCurrentSnackBar),
    ),
  );
}
