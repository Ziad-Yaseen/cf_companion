import 'package:cf_companion/core/components/rounded_border_container.dart';
import 'package:cf_companion/core/constants/app_colors.dart';
import 'package:cf_companion/core/constants/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainBackButton extends StatelessWidget {
  const MainBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppSizes.width36,
      height: AppSizes.width36,
      child: RoundedBorderContainer(
        onTap: () => context.pop(),
        child: Icon(
          Icons.arrow_back_ios_rounded,
          size: AppSizes.fontSize20,
          color: AppColors.textPrimary,
        ),
      ),
    );
  }
}
