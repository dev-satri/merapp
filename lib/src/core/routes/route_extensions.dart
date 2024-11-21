import 'package:flutter/material.dart';

extension RouteExtensions on BuildContext {
  void push(Widget route) =>
      Navigator.of(this).push(MaterialPageRoute(builder: (_) => route));

  void pushReplacement(Widget route) => Navigator.of(this)
      .pushReplacement(MaterialPageRoute(builder: (_) => route));

  void pushNamed(String routeName) => Navigator.of(this).pushNamed(routeName);

  void pushReplacementNamed(String routeName) =>
      Navigator.of(this).pushReplacementNamed(routeName);
}
