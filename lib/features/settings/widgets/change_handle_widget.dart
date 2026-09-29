import 'package:cf_companion/core/constants/app_colors.dart';
import 'package:cf_companion/core/constants/app_icons.dart';
import 'package:cf_companion/core/constants/app_sizes.dart';
import 'package:cf_companion/core/styles/text_styles.dart';
import 'package:cf_companion/features/settings/widgets/settings_main_card.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ChangeHandleWidget extends StatelessWidget {
  const new({super.key, required this.handle, this.onTap});
  final String handle;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return SettingsMainCard(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: AppSizes.width8,
                width: AppSizes.width8,
                decoration: const BoxDecoration(
                  color: AppColors.rankInternationalGrandmaster,
                  shape: BoxShape.circle,
                ),
              ),
              Gap(AppSizes.width6),
              Text(handle, style: AppTextStyles.hubProfile),
              const Spacer(),
              Text(
                'الـ Handle الحالي',
                textDirection: TextDirection.rtl,
                style: AppTextStyles.currentHandle,
              ),
            ],
          ),
          Gap(AppSizes.height16),
          const Divider(),
          Gap(AppSizes.height16),
          GestureDetector(
            onTap: onTap,
            child: Row(
              mainAxisAlignment: .center,
              children: [
                Text(
                  'تغيير الـ Handle',
                  textDirection: TextDirection.rtl,
                  style: AppTextStyles.buttonSecondary,
                ),
                Gap(AppSizes.width6),
                Icon(
                  AppIcons.changeHandle,
                  color: AppColors.primary,
                  size: AppSizes.fontSize20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
