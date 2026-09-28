import 'package:cf_companion/core/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class HubScreensAvatar extends StatelessWidget {
  const HubScreensAvatar({
    super.key,
    required this.color,
    required this.icon,
    this.iSActive = true,
  });
  final bool iSActive;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSizes.width40,
      height: AppSizes.width40,
      decoration: ShapeDecoration(
        shape: RoundedSuperellipseBorder(
          borderRadius: BorderRadius.circular(AppSizes.borderRadius10)
        ),
        color: iSActive ? color.withValues(alpha: 0.15) : null,
      ),
      child: Icon(icon, color: color, size: AppSizes.fontSize18),
    );
  }
}
