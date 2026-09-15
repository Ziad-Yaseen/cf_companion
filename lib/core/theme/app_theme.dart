import 'package:cf_companion/core/constants/app_colors.dart';
import 'package:cf_companion/core/styles/text_styles.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const double radiusSmall = 8;
  static const double radiusMedium = 14;
  static const double radiusLarge = 24;
  static const double radiusPill = 999;

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: AppColors.background,
      fontFamily: AppTextStyles.display.fontFamily,

      // -------------------------------------------------------------
      // Color Scheme
      // -------------------------------------------------------------
      colorScheme: const ColorScheme.dark(
        brightness: Brightness.dark,
        primary: AppColors.primary,
        onPrimary: Colors.white,
        secondary: AppColors.accent,
        onSecondary: AppColors.background,
        error: AppColors.error,
        onError: Colors.white,
        surface: AppColors.surface,
        onSurface: AppColors.textPrimary,
      ),

      // -------------------------------------------------------------
      // Text Theme
      // -------------------------------------------------------------
      textTheme: TextTheme(
        displayLarge: AppTextStyles.display,
        titleLarge: AppTextStyles.screenTitle,
        titleMedium: AppTextStyles.sectionHeader,
        bodyLarge: AppTextStyles.bodyBold,
        bodyMedium: AppTextStyles.body,
        bodySmall: AppTextStyles.bodySecondary,
        labelLarge: AppTextStyles.button,
        labelMedium: AppTextStyles.caption,
        labelSmall: AppTextStyles.micro,
      ),

      // -------------------------------------------------------------
      // AppBar
      // -------------------------------------------------------------
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.background,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        titleTextStyle: AppTextStyles.screenTitle,
        iconTheme: const IconThemeData(color: AppColors.textPrimary, size: 22),
        actionsIconTheme:
            const IconThemeData(color: AppColors.textSecondary, size: 22),
      ),

      // -------------------------------------------------------------
      // Buttons
      // -------------------------------------------------------------
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          disabledBackgroundColor: AppColors.border,
          disabledForegroundColor: AppColors.textDisabled,
          foregroundColor: Colors.white,
          minimumSize: const Size.fromHeight(52),
          textStyle: AppTextStyles.button,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radiusMedium),
          ),
          elevation: 0,
        ),
      ),

      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.primary,
          minimumSize: const Size.fromHeight(52),
          textStyle: AppTextStyles.buttonSecondary,
          side: const BorderSide(color: AppColors.primary, width: 1.5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radiusMedium),
          ),
        ),
      ),

      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppColors.primary,
          textStyle: AppTextStyles.bodyBold,
        ),
      ),

      iconButtonTheme: IconButtonThemeData(
        style: IconButton.styleFrom(
          foregroundColor: AppColors.textSecondary,
        ),
      ),

      // -------------------------------------------------------------
      // Inputs (Text Fields)
      // -------------------------------------------------------------
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.surface,
        hintStyle: AppTextStyles.body.copyWith(color: AppColors.textDisabled),
        labelStyle: AppTextStyles.caption,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radiusSmall + 4),
          borderSide: const BorderSide(color: AppColors.border, width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radiusSmall + 4),
          borderSide: const BorderSide(color: AppColors.border, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radiusSmall + 4),
          borderSide: const BorderSide(color: AppColors.primary, width: 1.5),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radiusSmall + 4),
          borderSide: const BorderSide(color: AppColors.error, width: 1.5),
        ),
      ),

      // -------------------------------------------------------------
      // Cards
      // -------------------------------------------------------------
      cardTheme: CardThemeData(
        color: AppColors.surface,
        elevation: 0,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radiusMedium),
          side: const BorderSide(color: AppColors.border, width: 1),
        ),
      ),

      // -------------------------------------------------------------
      // Chips (Tags / Filters)
      // -------------------------------------------------------------
      chipTheme: ChipThemeData(
        backgroundColor: AppColors.surfaceElevated,
        selectedColor: AppColors.primarySoft,
        disabledColor: AppColors.surfaceElevated,
        labelStyle: AppTextStyles.chip,
        secondaryLabelStyle: AppTextStyles.chipSelected,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        side: const BorderSide(color: AppColors.border, width: 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radiusPill),
        ),
      ),

      // -------------------------------------------------------------
      // Divider
      // -------------------------------------------------------------
      dividerTheme: const DividerThemeData(
        color: AppColors.border,
        thickness: 1,
        space: 1,
      ),

      // -------------------------------------------------------------
      // Bottom Navigation Bar
      // -------------------------------------------------------------
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: AppColors.navBackground,
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.textDisabled,
        selectedLabelStyle: AppTextStyles.micro.copyWith(
          color: AppColors.primary,
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelStyle: AppTextStyles.micro,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
      ),

      // -------------------------------------------------------------
      // Dialogs
      // -------------------------------------------------------------
      dialogTheme: DialogThemeData(
        backgroundColor: AppColors.surfaceElevated,
        titleTextStyle: AppTextStyles.sectionHeader,
        contentTextStyle: AppTextStyles.bodySecondary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radiusLarge - 4),
        ),
      ),

      // -------------------------------------------------------------
      // Bottom Sheets
      // -------------------------------------------------------------
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: AppColors.navBackground,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(radiusLarge),
          ),
        ),
      ),

      // -------------------------------------------------------------
      // Snackbar (Toast)
      // -------------------------------------------------------------
      snackBarTheme: SnackBarThemeData(
        backgroundColor: AppColors.surfaceElevated,
        contentTextStyle: AppTextStyles.body,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radiusMedium),
        ),
      ),

      // -------------------------------------------------------------
      // Progress Indicators
      // -------------------------------------------------------------
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: AppColors.primary,
      ),

      // -------------------------------------------------------------
      // Switch
      // -------------------------------------------------------------
      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.resolveWith((states) {
          return states.contains(WidgetState.selected)
              ? Colors.white
              : AppColors.textDisabled;
        }),
        trackColor: WidgetStateProperty.resolveWith((states) {
          return states.contains(WidgetState.selected)
              ? AppColors.primary
              : AppColors.border;
        }),
      ),

      // -------------------------------------------------------------
      // Checkbox
      // -------------------------------------------------------------
      checkboxTheme: CheckboxThemeData(
        fillColor: WidgetStateProperty.resolveWith((states) {
          return states.contains(WidgetState.selected)
              ? AppColors.success
              : Colors.transparent;
        }),
        side: const BorderSide(color: AppColors.border, width: 1.5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
      ),

      // -------------------------------------------------------------
      // Radio
      // -------------------------------------------------------------
      radioTheme: RadioThemeData(
        fillColor: WidgetStateProperty.resolveWith((states) {
          return states.contains(WidgetState.selected)
              ? AppColors.primary
              : AppColors.border;
        }),
      ),
    );
  }
}