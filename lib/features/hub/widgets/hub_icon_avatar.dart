import 'package:cf_companion/core/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class HubIconAvatar extends StatelessWidget {
  const HubIconAvatar({
    super.key,
    required this.icon,
    required this.color,
    this.iSActive = true,
  });

  final IconData icon;
  final Color color;
  final bool iSActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSizes.width40,
      height: AppSizes.width40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: iSActive ? color.withValues(alpha: 0.15) : null,
        border: iSActive ? Border.all(color: color, width: 0.9) : null,
      ),
      child: Icon(icon, color: color, size: AppSizes.fontSize18),
    );
  }
}
