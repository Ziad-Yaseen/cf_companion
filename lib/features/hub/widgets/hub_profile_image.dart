import 'package:cf_companion/core/components/app_cached_image.dart';
import 'package:cf_companion/core/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class HubProfileImage extends StatelessWidget {
  const HubProfileImage({
    super.key,
    required this.color,
    required this.imageUrl,
  });
  final Color color;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSizes.borderRadius9999),
        border: Border.all(color: color, width: 0.9),
      ),
      child: AppCachedImage(
        radius: AppSizes.borderRadius9999,
        imageUrl: imageUrl,
        width: AppSizes.width40,
        height: AppSizes.width40,
      ),
    );
  }
}
