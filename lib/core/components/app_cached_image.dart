import 'package:cached_network_image/cached_network_image.dart';
import 'package:cf_companion/core/constants/app_colors.dart';
import 'package:cf_companion/core/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AppCachedImage extends StatelessWidget {
  const AppCachedImage({
    super.key,
    required this.imageUrl,
    required this.width,
    required this.height,
    this.radius = 0,
  });

  final String imageUrl;
  final double width;
  final double height;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        width: width,
        height: height,
        fit: BoxFit.cover,
        placeholder: (context, url) => Container(
          width: width,
          height: height,
          color: AppColors.surfaceElevated,
          child: const Center(
            child: CircularProgressIndicator(
              color: AppColors.primary,
              strokeWidth: 2,
            ),
          ),
        ),
        errorWidget: (context, url, error) => Container(
          width: width,
          height: height,
          color: AppColors.surfaceElevated,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.image_not_supported_outlined,
                size: height < 100 ? 24 : 40,
                color: AppColors.textDisabled,
              ),
              if (height >= 100) ...[
                const Gap(8),
                Text('No Image', style: AppTextStyles.caption),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
