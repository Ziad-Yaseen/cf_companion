import 'package:cf_companion/core/constants/app_colors.dart';
import 'package:cf_companion/core/constants/app_sizes.dart';
import 'package:cf_companion/core/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HubMenuRow extends StatelessWidget {
  const HubMenuRow({
    super.key,
    required this.title,
    this.subtitle,
    required this.leading,
    this.badge,
    this.style,
    this.enabled = true,
    this.onTap,
  });

  final String title;
  final String? subtitle;
  final Widget leading;
  final String? badge;
  final TextStyle? style;
  final bool enabled;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: enabled ? 1 : 0.55,
      child: InkWell(
        borderRadius: BorderRadius.circular(AppSizes.borderRadius14),
        onTap: enabled ? onTap : null,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppSizes.padding16,
            vertical: AppSizes.padding12,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.arrow_back_ios_new_rounded,
                size: AppSizes.fontSize14,
                color: AppColors.textDisabled,
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        title,
                        textDirection: TextDirection.rtl,
                        style: style ?? AppTextStyles.bodyBold,
                      ),
                      if (badge != null) ...[
                        Gap(AppSizes.width8),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: AppSizes.padding8,
                            vertical: 2,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.border,
                            borderRadius: BorderRadius.circular(
                              AppSizes.borderRadius9999,
                            ),
                          ),
                          child: Text(
                            badge!,
                            style: AppTextStyles.micro.copyWith(
                              color: AppColors.textSecondary,
                            ),
                          ),
                        ),
                      ],
                    ],
                  ),
                  if (subtitle != null) ...[
                    Gap(AppSizes.height1),
                    Text(
                      subtitle!,
                      textDirection: TextDirection.rtl,
                      style: AppTextStyles.attributeSecondaryProfile,
                    ),
                  ],
                ],
              ),
              Gap(AppSizes.width10),
              leading,
            ],
          ),
        ),
      ),
    );
  }
}
