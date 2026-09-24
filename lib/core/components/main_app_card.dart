import 'package:flutter/material.dart';

class MainAppCard extends StatelessWidget {
  const MainAppCard({
    super.key,
    required this.child,
    this.horizontalContentPadding = 0,
    this.verticalContentPadding = 0,
    this.color = Colors.transparent,
    this.radius = 0,
    this.border,
    this.shadow,
  });
  final double horizontalContentPadding;
  final double verticalContentPadding;
  final Color color;
  final double radius;
  final BoxBorder? border;
  final List<BoxShadow>? shadow;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: horizontalContentPadding,
        vertical: verticalContentPadding,
      ),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(radius),
        border: border,
        boxShadow: shadow,
      ),
      child: child,
    );
  }
}
