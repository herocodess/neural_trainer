// ignore_for_file: type_annotate_public_apis, always_declare_return_types

import 'package:flutter/material.dart';

class CustomNavigator {
  // Pushes to the route specified
  static Future<Object?>? pushTo(
    BuildContext context,
    String strPageName, {
    var arguments,
  }) async {
    final result = await Navigator.of(context, rootNavigator: true)
        .pushNamed(strPageName, arguments: arguments);
    return result;
  }

  // Pop the top view
  static pop(BuildContext context, {var result}) {
    Navigator.pop(context, result);
  }

  // Pops to a particular view
  static popTo(BuildContext context, String strPageName) {
    Navigator.popAndPushNamed(context, strPageName);
  }

  static pushReplace(
    BuildContext context,
    String strPageName, {
    var arguments,
  }) {
    Navigator.pushReplacementNamed(context, strPageName, arguments: arguments);
  }

  static popAndPushReplace(BuildContext context, strPageName, {var arguments}) {
    Navigator.pushNamedAndRemoveUntil(
      context,
      strPageName,
      (route) => false,
      arguments: arguments,
    );
  }
}
