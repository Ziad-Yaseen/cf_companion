import 'package:cf_companion/core/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class SettingsIconAvatar extends StatelessWidget {
  const new({
    super.key,
    required this.color,
    required this.icon,
    this.width,
    this.iconSize,
  });
  final Color color;
  final IconData icon;
  final double? width;
  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? AppSizes.width40,
      height: width ?? AppSizes.width40,
      decoration: ShapeDecoration(
        shape: RoundedSuperellipseBorder(
          borderRadius: BorderRadius.circular(AppSizes.borderRadius10),
        ),
        color: color.withValues(alpha: 0.15),
      ),
      child: Icon(icon, color: color, size: iconSize ?? AppSizes.fontSize18),
    );
  }
}
