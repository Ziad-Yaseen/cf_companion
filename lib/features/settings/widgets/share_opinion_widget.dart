import 'package:cf_companion/core/constants/app_colors.dart';
import 'package:cf_companion/core/constants/app_icons.dart';
import 'package:cf_companion/core/styles/text_styles.dart';
import 'package:flutter/material.dart';

class ShareOpinionWidget extends StatelessWidget {
  const ShareOpinionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Row(
        children: [
          const Icon(AppIcons.arrowBack, color: AppColors.textSecondary),
          const Spacer(),
          Text('شارك رأيك', style: AppTextStyles.settingsBody),
        ],
      ),
    );
  }
}
