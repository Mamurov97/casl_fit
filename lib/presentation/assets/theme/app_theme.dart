import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'base_colors.dart';
import 'light_mode_colors.dart';

class AppTheme {
  /// App theme colors
  static late BaseColors colors;

  /// Current app theme mode
  static late ThemeMode themeMode;

  /// App theme data
  static late ThemeData data;

  static Future<void> init() async {
    themeMode = ThemeMode.light;
    colors = _getThemeColors();

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    final textTheme = TextTheme(
      displayLarge: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 24.sp,
        color: colors.text900,
      ),
      displayMedium: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 24.sp,
        color: colors.text900,
      ),
      displaySmall: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 24.sp,
        color: colors.text900,
      ),
      headlineMedium: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 20.sp,
        color: colors.text900,
      ),
      titleLarge: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 16.sp,
        color: colors.text900,
      ),

      /// Sub/Subtitle Medium 14
      titleMedium: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 14.sp,
        color: colors.text900,
      ),
      titleSmall: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 16.sp,
        color: colors.text900,
      ),
      bodyLarge: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 14.sp,
        color: colors.text900,
      ),
      bodySmall: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 14.sp,
        color: colors.text900,
      ),
      labelLarge: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 11.sp,
        color: colors.text900,
      ),
      labelMedium: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 11.sp,
        color: colors.text900,
      ),
      labelSmall: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 11.sp,
        color: colors.text900,
      ),
    );

    data = ThemeData(
      useMaterial3: true,
      fontFamily: 'Inter',
      textTheme: textTheme,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      dividerColor: colors.divider,
      brightness: themeMode == ThemeMode.light ? Brightness.light : Brightness.dark,
      textSelectionTheme: TextSelectionThemeData(cursorColor: colors.black),
      scaffoldBackgroundColor: Colors.black,
      appBarTheme: AppBarTheme(
        color: colors.primary,
        titleSpacing: 0,
        elevation: 0,
        centerTitle: false,
        titleTextStyle: textTheme.titleLarge!.copyWith(
          color: Colors.white,
          fontSize: 18.sp,
        ),
        iconTheme: IconThemeData(color: Colors.white, size: 20.sp),
      ),
      dialogTheme: DialogTheme(backgroundColor: colors.background),
      toggleButtonsTheme: ToggleButtonsThemeData(
        selectedColor: colors.primary,
        selectedBorderColor: colors.primary,
        fillColor: colors.primary,
      ),
      checkboxTheme: CheckboxThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.r),
        ),
        side: BorderSide(color: colors.gray500),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colors.primary,
          foregroundColor: colors.secondary,
          disabledBackgroundColor: Colors.grey.shade500,
          minimumSize: Size(1.sw, 48.h),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
          textStyle: textTheme.titleMedium,
        ),
      ),
      tabBarTheme: TabBarTheme(
        labelColor: colors.text900,
        unselectedLabelColor: colors.text900,
        labelStyle: textTheme.labelLarge?.copyWith(fontSize: 13.sp),
        unselectedLabelStyle: textTheme.labelMedium?.copyWith(
          fontSize: 13.sp,
        ),
        indicator: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.r),
          boxShadow: const [
            BoxShadow(
              offset: Offset(0, 3),
              blurRadius: 1,
              color: Color.fromRGBO(0, 0, 0, 0.04),
            ),
            BoxShadow(
              offset: Offset(0, 3),
              blurRadius: 8,
              color: Color.fromRGBO(0, 0, 0, 0.12),
            ),
          ],
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.white,
        focusColor: colors.primary,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: colors.subtleText),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: colors.primary),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: colors.subtleText),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: colors.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: colors.red),
        ),
        helperStyle: textTheme.bodySmall,
        hintStyle: textTheme.bodySmall?.copyWith(color: colors.subtleText),
        counterStyle: textTheme.bodySmall?.copyWith(color: colors.primary),
        errorStyle: textTheme.labelSmall?.copyWith(color: colors.red, fontSize: 10.sp, height: 0.2),
        errorMaxLines: 3,
        labelStyle: textTheme.labelSmall?.copyWith(color: colors.subtleText, fontSize: 14.sp),
        floatingLabelStyle: textTheme.labelSmall?.copyWith(color: colors.black, fontSize: 14.sp),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 12.w,
          vertical: 10.h,
        ),
      ),
    );
  }

  static BaseColors _getThemeColors() => const LightModeColors();
}
