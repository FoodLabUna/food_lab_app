import 'package:flutter/material.dart';

class HideScrollGlow extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}

class ScrollSemGlow extends StatelessWidget {
  final Widget child;

  const ScrollSemGlow({required this.child});

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: HideScrollGlow(),
      child: SingleChildScrollView(
        child: child,
      ),
    );
  }
}
