import 'package:cf_companion/core/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class ProfileImageWidget extends StatelessWidget {
  const ProfileImageWidget({
    super.key,
    required this.imageUrl,
    required this.color,
    // required this.isVerified,
  });

  final String imageUrl;
  final Color color;
  // final bool isVerified;

  @override
  Widget build(BuildContext context) {
    return
    // SizedBox(
    //   width: AppSizes.width68,
    //   height: AppSizes.width68,
    //   child: Stack(
    //     clipBehavior: Clip.none,
    //     children: [
    Container(
      width: AppSizes.width64,
      height: AppSizes.width64,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSizes.borderRadius12),
        border: Border.all(color: color, width: 2),
        boxShadow: [
          BoxShadow(
            color: color.withValues(alpha: 0.25),
            blurRadius: 12,
            offset: const Offset(0, 0),
          ),
        ],
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
    );

    // if (isVerified)
    //   Positioned(
    //     bottom: -2,
    //     left: -2,
    //     child: Container(
    //       width: AppSizes.width20,
    //       height: AppSizes.width20,
    //       decoration: BoxDecoration(
    //         color: AppColors.surface,
    //         shape: BoxShape.circle,
    //         border: Border.all(
    //           color: color.withValues(alpha: 0.60),
    //           width: 1,
    //         ),
    //       ),
    //       child: Center(
    //         child: Icon(
    //           AppIcons.verifiedBadge,
    //           color: color,
    //           size: AppSizes.fontSize12,
    //         ),
    //       ),
    //     ),
    //   ),
    //     ],
    //   ),
    // )
  }
}
