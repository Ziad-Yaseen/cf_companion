import 'package:cf_companion/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  AppTextStyles._();

  // ---------------------------------------------------------------------
  // Display
  // ---------------------------------------------------------------------
  static TextStyle get display => GoogleFonts.cairo(
        fontSize: 32,
        fontWeight: FontWeight.w700,
        color: AppColors.textPrimary,
        height: 1.2,
      );

  // ---------------------------------------------------------------------
  // Screen Title — AppBar
  // ---------------------------------------------------------------------
  static TextStyle get screenTitle => GoogleFonts.cairo(
        fontSize: 22,
        fontWeight: FontWeight.w700,
        color: AppColors.textPrimary,
      );

  // ---------------------------------------------------------------------
  // Section Header
  // ---------------------------------------------------------------------
  static TextStyle get sectionHeader => GoogleFonts.cairo(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        color: AppColors.textPrimary,
        letterSpacing: 0.2,
      );

  // ---------------------------------------------------------------------
  // Body
  // ---------------------------------------------------------------------
  static TextStyle get bodyBold => GoogleFonts.cairo(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: AppColors.textPrimary,
        height: 1.4,
      );

  static TextStyle get body => GoogleFonts.cairo(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppColors.textPrimary,
        height: 1.4,
      );

  static TextStyle get bodySecondary => GoogleFonts.cairo(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppColors.textSecondary,
        height: 1.4,
      );

  // ---------------------------------------------------------------------
  // Caption
  // ---------------------------------------------------------------------
  static TextStyle get caption => GoogleFonts.cairo(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: AppColors.textSecondary,
      );

  static TextStyle get captionBold => GoogleFonts.cairo(
        fontSize: 12,
        fontWeight: FontWeight.w700,
        color: AppColors.textSecondary,
      );

  // ---------------------------------------------------------------------
  // Micro
  // ---------------------------------------------------------------------
  static TextStyle get micro => GoogleFonts.cairo(
        fontSize: 10,
        fontWeight: FontWeight.w500,
        color: AppColors.textSecondary,
      );

  // ---------------------------------------------------------------------
  // Button Label
  // ---------------------------------------------------------------------
  static TextStyle get button => GoogleFonts.cairo(
        fontSize: 15,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      );

  static TextStyle get buttonSecondary => GoogleFonts.cairo(
        fontSize: 15,
        fontWeight: FontWeight.w600,
        color: AppColors.primary,
      );

  // ---------------------------------------------------------------------
  // Chip / Tag Label
  // ---------------------------------------------------------------------
  static TextStyle get chip => GoogleFonts.cairo(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: AppColors.textSecondary,
      );

  static TextStyle get chipSelected => GoogleFonts.cairo(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        color: AppColors.primary,
      );

  // ---------------------------------------------------------------------
  // Rating / Rank Text
  // ---------------------------------------------------------------------
  static TextStyle get ratingLarge => GoogleFonts.cairo(
        fontSize: 24,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get ratingSmall => GoogleFonts.cairo(
        fontSize: 16,
        fontWeight: FontWeight.w700,
      );

  // ---------------------------------------------------------------------
  // Helpers 
  // ---------------------------------------------------------------------
  static TextStyle withColor(TextStyle style, Color color) {
    return style.copyWith(color: color);
  }

  static TextStyle withSize(TextStyle style, double size) {
    return style.copyWith(fontSize: size);
  }
}