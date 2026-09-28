import 'package:cf_companion/core/constants/app_colors.dart';
import 'package:cf_companion/core/constants/app_icons.dart';
import 'package:cf_companion/core/styles/text_styles.dart';
import 'package:flutter/material.dart';

class ProblemsetAppBar extends StatelessWidget {
  const ProblemsetAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SafeArea(
        top: true,
        bottom: false,
        left: false,
        right: false,
        child: Column(
          children: [
            Row(
              children: [
                const Icon(AppIcons.filter, color: AppColors.textSecondary),
                const Spacer(),
                Text('المسائل', style: AppTextStyles.screenTitle),
              ],
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
