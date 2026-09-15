import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  // ---------------------------------------------------------------------
  // Backgrounds & Surfaces
  // ---------------------------------------------------------------------
  static const Color background = Color(0xFF0B0F1A);
  static const Color surface = Color(0xFF141B2D);
  static const Color surfaceElevated = Color(0xFF1C2438);
  static const Color border = Color(0xFF26304A);
  static const Color navBackground = Color(0xFF0F1420);

  // ---------------------------------------------------------------------
  // Brand Colors
  // ---------------------------------------------------------------------
  static const Color primary = Color(0xFF6366F1); // Indigo-500
  static const Color primaryPressed = Color(0xFF4F46E5); // Indigo-600
  static const Color accent = Color(0xFF22D3EE); // Cyan-400

  // ---------------------------------------------------------------------
  // Status Colors
  // ---------------------------------------------------------------------
  static const Color success = Color(0xFF22C55E); // Accepted
  static const Color warning = Color(0xFFF59E0B); // Performance warnings
  static const Color error = Color(0xFFEF4444); // Wrong Answer / Destructive

  // ---------------------------------------------------------------------
  // Text Colors
  // ---------------------------------------------------------------------
  static const Color textPrimary = Color(0xFFF1F5F9);
  static const Color textSecondary = Color(0xFF94A3B8);
  static const Color textDisabled = Color(0xFF64748B);

  // ---------------------------------------------------------------------
  // Codeforces Rank Colors
  // ---------------------------------------------------------------------
  static const Color rankNewbie = Color(0xFF808080); // < 1200
  static const Color rankPupil = Color(0xFF008000); // 1200-1399
  static const Color rankSpecialist = Color(0xFF03A89E); // 1400-1599
  static const Color rankExpert = Color(0xFF0000FF); // 1600-1899
  static const Color rankCandidateMaster = Color(0xFFAA00AA); // 1900-2099
  static const Color rankMaster = Color(0xFFFF8C00); // 2100-2299
  static const Color rankInternationalMaster = Color(0xFFFF8C00); // 2300-2399
  static const Color rankGrandmaster = Color(0xFFFF0000); // 2400-2599
  static const Color rankInternationalGrandmaster = Color(
    0xFFFF0000,
  ); // 2600-2999
  static const Color rankLegendaryGrandmaster = Color(0xFFFF0000); // 3000+
  static const Color rankUnrated = textSecondary;

  /// [rankUnrated].
  static Color forRating(int? rating) {
    if (rating == null) return rankUnrated;
    if (rating < 1200) return rankNewbie;
    if (rating < 1400) return rankPupil;
    if (rating < 1600) return rankSpecialist;
    if (rating < 1900) return rankExpert;
    if (rating < 2100) return rankCandidateMaster;
    if (rating < 2400) return rankMaster;
    if (rating < 3000) return rankGrandmaster;
    return rankLegendaryGrandmaster;
  }

  // ---------------------------------------------------------------------
  // Verdict Colors (Submissions)
  // ---------------------------------------------------------------------
  static Color forVerdict(String? verdict) {
    switch (verdict) {
      case 'OK':
        return success;
      case 'WRONG_ANSWER':
      case 'RUNTIME_ERROR':
      case 'COMPILATION_ERROR':
      case 'CHALLENGED':
      case 'REJECTED':
        return error;
      case 'TIME_LIMIT_EXCEEDED':
      case 'MEMORY_LIMIT_EXCEEDED':
      case 'IDLENESS_LIMIT_EXCEEDED':
        return warning;
      case 'TESTING':
      case 'SUBMITTED':
        return primary;
      default:
        return textSecondary;
    }
  }

  // ---------------------------------------------------------------------
  // Gradients
  // ---------------------------------------------------------------------
  static const LinearGradient primaryGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [primaryPressed, primary],
  );

  static const LinearGradient surfaceGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [surfaceElevated, surface],
  );

  // ---------------------------------------------------------------------
  // Opacity Helpers
  // ---------------------------------------------------------------------
  static Color primarySoft = primary.withValues(alpha: 0.15);
  static Color successSoft = success.withValues(alpha: 0.15);
  static Color warningSoft = warning.withValues(alpha: 0.15);
  static Color errorSoft = error.withValues(alpha: 0.15);
  static Color accentSoft = accent.withValues(alpha: 0.15);
}
