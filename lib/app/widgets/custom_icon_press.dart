import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomIconPress extends StatelessWidget {
  const CustomIconPress(
      {this.icon, this.color, this.color1, this.onTap, this.size});

  final IconData? icon;
  final Color? color;
  final Color? color1;
  final VoidCallback? onTap;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: FaIcon(
              icon,
              color: Colors.white,
              size: size,
            ),
          ),
        ),
      ),
    );
  }
}

class RadiantGradientMask extends StatelessWidget {
  const RadiantGradientMask({this.child, this.color, this.color1});

  final Widget? child;
  final Color? color;
  final Color? color1;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => RadialGradient(
        center: Alignment.bottomRight,
        radius: 0.5,
        colors: [color!, color1!],
        // tileMode: TileMode.mirror,
      ).createShader(bounds),
      child: child,
    );
  }
}
