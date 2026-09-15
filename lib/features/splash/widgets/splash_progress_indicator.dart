import 'package:cf_companion/core/constants/app_colors.dart';
import 'package:cf_companion/core/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class SplashProgressIndicator extends StatelessWidget {
  const SplashProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppSizes.width28,
      height: AppSizes.height28,
      child: const CircularProgressIndicator(
        strokeCap: StrokeCap.round,
        backgroundColor: AppColors.border,
      ),
    );
  }
}
