import 'package:cf_companion/core/constants/app_colors.dart';
import 'package:cf_companion/core/constants/app_sizes.dart';
import 'package:cf_companion/core/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AppBottomNavItem {
  const AppBottomNavItem({required this.icon, required this.label});

  final IconData icon;
  final String label;
}

class AppBottomNavBar extends StatelessWidget {
  const AppBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.items,
    required this.onTap,
  });

  final List<AppBottomNavItem> items;
  final int currentIndex;
  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: const EdgeInsets.fromLTRB(16, 0, 16, 12),
      child: Container(
        height: AppSizes.height64,
        padding: EdgeInsets.symmetric(horizontal: AppSizes.padding10),
        decoration: BoxDecoration(
          color: AppColors.navBackground,
          borderRadius: BorderRadius.circular(AppSizes.borderRadius24),
          border: const Border(
            top: BorderSide(color: AppColors.border, width: 1.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.25),
              blurRadius: 16,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: .spaceBetween,
          children: List.generate(items.length, (index) {
            final isActive = index == currentIndex;
            return _NavItemWidget(
              isActive: isActive,
              item: items[index],
              onTap: () => onTap(index),
            );
          }),
        ),
      ),
    );
  }
}

class _NavItemWidget extends StatelessWidget {
  const _NavItemWidget({
    required this.isActive,
    required this.item,
    required this.onTap,
  });

  final AppBottomNavItem item;
  final bool isActive;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeOut,
        padding: EdgeInsets.symmetric(
          horizontal: isActive ? AppSizes.padding16 : AppSizes.padding12,
        ),
        height: AppSizes.height44,
        decoration: BoxDecoration(
          color: isActive ? AppColors.primarySoft : Colors.transparent,
          borderRadius: BorderRadius.circular(AppSizes.borderRadius12),
          border: isActive
              ? Border.all(color: AppColors.primary, width: 1)
              : null,
        ),
        alignment: Alignment.center,
        child: Row(
          mainAxisSize: .min,
          children: [
            Icon(
              item.icon,
              size: 22,
              color: isActive ? AppColors.primary : AppColors.textDisabled,
            ),
            if (isActive) ...[
              Gap(AppSizes.width8),
              Text(
                item.label,
                style: AppTextStyles.bodyBold.copyWith(
                  color: AppColors.primary,
                  fontSize: 14,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
