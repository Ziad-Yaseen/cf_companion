import 'package:cf_companion/core/constants/app_colors.dart';
import 'package:cf_companion/features/profile/widgets/profile_image_widget.dart';
import 'package:flutter/material.dart';

class VerifiedProfileWidget extends StatelessWidget {
  const VerifiedProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const ProfileImageWidget(
      imageUrl: 'https://cloudinary-marketing-res.cloudinary.com/image/upload/w_1300/q_auto/f_auto/hiking_dog_mountain',
      color: AppColors.rankLegendaryGrandmaster,
      // isVerified: false,
    );
  }
}
