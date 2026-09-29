import 'package:cf_companion/core/constants/app_colors.dart';
import 'package:cf_companion/core/constants/app_icons.dart';
import 'package:cf_companion/core/styles/text_styles.dart';
import 'package:flutter/material.dart';

class DefaultReminderWidget extends StatelessWidget {
  const new({super.key, this.onTap});
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          const Icon(AppIcons.arrowBack, color: AppColors.textSecondary),
          Text(
            '30 دقيقة',
            textDirection: TextDirection.rtl,
            style: AppTextStyles.sectionHeader,
          ),
        ],
      ),
    );
  }
}
