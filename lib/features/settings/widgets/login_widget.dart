import 'package:cf_companion/core/constants/app_colors.dart';
import 'package:cf_companion/core/constants/app_icons.dart';
import 'package:cf_companion/core/constants/app_sizes.dart';
import 'package:cf_companion/core/styles/text_styles.dart';
import 'package:cf_companion/features/settings/widgets/settings_icon_avatar.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: DottedBorder(
        options: RoundedRectDottedBorderOptions(
          color: AppColors.border,
          strokeWidth: 1,
          dashPattern: [8, 6],
          radius: Radius.circular(AppSizes.borderRadius14),
        ),
        child: Container(
          padding: EdgeInsets.all(AppSizes.padding16),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: AlignmentGeometry.topEnd,
              end: AlignmentGeometry.bottomStart,
              colors: [AppColors.surfaceElevated, AppColors.navBackground],
            ),
            borderRadius: BorderRadius.circular(AppSizes.borderRadius14),
          ),
          child: Row(
            children: [
              SettingsIconAvatar(
                width: AppSizes.width60,
                color: AppColors.warning,
                icon: AppIcons.star,
                iconSize: AppSizes.fontSize28,
              ),
              const SizedBox(width: 16),

              // Middle Text Section
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'تسجيل دخول - قريبًا',
                          textDirection: TextDirection.rtl,
                          style: AppTextStyles.cairoBold13,
                        ),
                        Gap(AppSizes.width12),
                        // VIP Badge
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.border,
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Text('VIP', style: AppTextStyles.smallText),
                        ),
                      ],
                    ),
                    Gap(AppSizes.height8),
                    Text(
                      'مزامنة الإعدادات وتنبيهات مخصصة وسحابية',
                      textDirection: TextDirection.rtl,
                      style: AppTextStyles.withColor(
                        AppTextStyles.attributeSecondary,
                        AppColors.textDisabled,
                      ),
                    ),
                  ],
                ),
              ),

              // Left Icon (Unlock / Open)
              Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: Icon(
                  AppIcons.lock,
                  color: AppColors.textDisabled,
                  size: AppSizes.fontSize26,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
