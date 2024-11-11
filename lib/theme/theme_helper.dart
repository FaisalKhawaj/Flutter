import 'package:flutter/material.dart';
import '../app_export.dart';

LightCodeColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();

/// Helper class for managing themes and colors.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ThemeHelper {
  // The current app theme
  final _appTheme = PrefUtils().getThemeData();

// A map of custom color themes supported by the app
  final Map<String, LightCodeColors> _supportedCustomColor = {
    'lightCode': LightCodeColors()
  };

// A map of color schemes supported by the app
  final Map<String, ColorScheme> _supportedColorScheme = {
    'lightCode': ColorSchemes.lightCodeColorScheme
  };

  /// Changes the app theme to [newTheme].
  void changeTheme(String newTheme) {
    PrefUtils().setThemeData(newTheme);
    Get.forceAppUpdate();
  }

  /// Returns the lightCode colors for the current theme.
  LightCodeColors _getThemeColors() {
    return _supportedCustomColor[_appTheme] ?? LightCodeColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.lightCodeColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: colorScheme.primary.withOpacity(1),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: appTheme.black900,
            width: 2,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: appTheme.pinkA200,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: WidgetStateColor.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return colorScheme.primary;
          }
          return Colors.transparent;
        }),
        side: const BorderSide(
          width: 1,
        ),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(),
      dividerTheme: DividerThemeData(
        thickness: 2,
        space: 2,
        color: colorScheme.primary.withOpacity(0.36),
      ),
    );
  }

  /// Returns the lightCode colors for the current theme.
  LightCodeColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.black900,
          // fontSize: 16.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color:appTheme.gray5002,
          // fontSize: 15.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
        bodySmall: TextStyle(
          color: appTheme.blueGray40001,
          // fontSize: 12.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        headlineLarge: TextStyle(
          color: appTheme.gray90002,
          // fontSize: 32.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
        headlineSmall: TextStyle(
          color: colorScheme.primary.withOpacity(1),
          // fontSize: 24.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
        headlineMedium:TextStyle(
        color: appTheme.gray5002,
        fontSize:14,
        fontFamily: 'Inter',
        fontWeight: FontWeight.w500
    ),
        labelLarge: TextStyle(
          color: appTheme.gray60001,
          // fontSize: 12.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
        labelMedium: TextStyle(
          color: appTheme.black900,
          // fontSize: 11.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),

        titleMedium: TextStyle(
          color: appTheme.black900,
          // fontSize: 16.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
        titleSmall: TextStyle(
          color: appTheme.black900,
          // fontSize: 14.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
      titleLarge:TextStyle(
          color:appTheme.black900,
          fontSize: 16,
          fontFamily: 'Inter',
          fontWeight:FontWeight.w600
      ),

      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static const lightCodeColorScheme = ColorScheme.light(
    primary: Color(0X1EFFFFFF),
    primaryContainer: Color(0XFF24546F),
    secondary:Color(0XFF6B7280),
    tertiary: Color(0XFF432B1A),
    // textColor:Color(0X432B1A),

    secondaryContainer: Color(0XFFFCFCFF),
    errorContainer: Color(0XFF9EA3B2),
    onError: Color(0X66FFFFFF),
    onErrorContainer: Color(0XFF191B23),
    onPrimary: Color(0XFF9400D3),
    onPrimaryContainer: Color(0XFF0E0E0E),
  );
}

/// Class containing custom colors for a lightCode theme.
class LightCodeColors {
  // Amber
  Color get amberA200 => const Color(0XFFFFDA44);
// Black
  Color get black900 => const Color(0XFF000000);
  Color get black901 => const Color(0x00432b1a);
// Blue
  Color get blue500 => const Color(0XFF2E8AF6);
  Color get blue600 => const Color(0XFF1A93D6);
  Color get blue60001 => const Color(0XFF2D9CDB);
  Color get blue60026 => const Color(0X262C9CDB);
  Color get blue800 => const Color(0XFF1B72C0);
  Color get blueA200 => const Color(0XFF4D81E7);
  Color get blueA400 => const Color(0XFF0A7AFF);
  Color get blueA40001 => const Color(0XFF2F80ED);
  Color get blueA40002 => const Color(0XFF3671FF);


// BlueGray

  Color get blueGray100 => const Color(0XFFD8D0E3);
  Color get blueGray10001 => const Color(0XFFD4D4D4);
  Color get blueGray200 => const Color(0XFFACB5BB);
  Color get blueGray20001 => const Color(0XFFB9BDCC);
  Color get blueGray20002 => const Color(0XFFAAADB7);
  Color get blueGray300 => const Color(0XFF8F8FA6);
  Color get blueGray30001 => const Color(0XFFA1A1BC);
  Color get blueGray400 => const Color(0XFF898A8D);
  Color get blueGray40001 => const Color(0XFF78858F);
  Color get blueGray40002 => const Color(0XFF8D8D8D);
  Color get blueGray40003 => const Color(0XFF888888);
  Color get blueGray50 => const Color(0XFFEFF0F6);
  Color get blueGray5001 => const Color(0XFFEDF1F3);
  Color get blueGray600 => const Color(0XFF536471);
  Color get blueGray60001 => const Color(0XFF4E5D7B);
  Color get blueGray60019 => const Color(0X19466086);
  Color get blueGray6001901 => const Color(0X19466087);
  Color get blueGray700 => const Color(0XFF50555C);
  Color get blueGray800 => const Color(0XFF40434D);
  Color get blueGray80001 => const Color(0XFF2F394B);
  Color get blueGray80002 => const Color(0XFF363B4B);
  Color get blueGray900 => const Color(0XFF282B35);
  Color get blueGray90001 => const Color(0XFF323436);
  Color get blueGray90002 => const Color(0XFF093030);
  Color get blueGray90003 => const Color(0XFF363130);
  Color get blueGray90004 => const Color(0XFF263238);
  Color get blueGray90099 => const Color(0X99333333);
// BlueGrayEd
  Color get blueGray100Ed => const Color(0XEDD5D7DD);
// BlueGrayd
  Color get blueGray2003d => const Color(0X3DB3BBCB);
// Cyan
  Color get cyan400 => const Color(0XFF28BAE2);
  Color get cyan40001 => const Color(0XFF39D2C0);
  Color get cyan50 => const Color(0XFFEBFBF9);
  Color get cyanA400 => const Color(0XFF01DCEE);
  Color get cyanA40001 => const Color(0XFF00D9F5);
// DeepOrange
  Color get deepOrange500 => const Color(0XFFFF512F);
// Gray
  Color get gray100 => const Color(0XFFF1F1FD);
  Color get gray10001 => const Color(0XFFF1FFF2);
  Color get gray10002 => const Color(0XFFF7F7F7);
  Color get gray10003 => const Color(0XFFEFF4FF);
  Color get gray10004 => const Color(0XFFF2F4F6);
  Color get gray10005 => const Color(0XFFF4F4F4);
  Color get gray10006 => const Color(0XFFF5F6F8);
  Color get gray10007 => const Color(0XFFF0F2F5);
  Color get gray200 => const Color(0XFFECECEC);
  Color get gray20001 => const Color(0XFFE9E9EB);
  Color get gray20002 => const Color(0XFFEBEAEC);
  Color get gray20003 => const Color(0XFFECEDEE);
  Color get gray20004 => const Color(0XFFEAEAEA);
  Color get gray300 => const Color(0XFFDFDFDF);
  Color get gray30001 => const Color(0XFFDBDBDB);
  Color get gray30002 => const Color(0XFFE6E6E6);
  Color get gray30003 => const Color(0XFFE1E1E1);
  Color get gray30004 => const Color(0XFFE3E4E8);
  Color get gray30005 => const Color(0XFFDFE2E8);
  Color get gray400 => const Color(0XFFBDBDBD);
  Color get gray50 => const Color(0XFFF8F9FA);
  Color get gray500 => const Color(0XFF9586A8);
  Color get gray50001 => const Color(0XFF989898);
  Color get gray5001 => const Color(0XFFF8F8F8);
  Color get gray5002 => const Color(0XFF6B7280);
  Color get gray600 => const Color(0XFF717477);
  Color get gray60001 => const Color(0XFF6C7278);
  Color get gray60002 => const Color(0XFF6C757D);
  Color get gray60003 => const Color(0XFF828282);
  Color get gray60004 => const Color(0XFF6F7380);
  Color get gray700 => const Color(0XFF545454);
  Color get gray900 => const Color(0XFF191919);
  Color get gray90001 => const Color(0XFF18191B);
  Color get gray90002 => const Color(0XFF111827);
  Color get gray90003 => const Color(0XFF232323);
  Color get gray90004 => const Color(0XFF1E1E1E);
  Color get gray90005 => const Color(0XFF262626);
  Color get gray90006 => const Color(0XFF052224);
  Color get gray90007 => const Color(0XFF232222);
  Color get gray90008 => const Color(0XFF001E2F);
  Color get gray90009 => const Color(0XFF2A2A2A);
  Color get gray90010 => const Color(0XFF1A1C1E);
  Color get gray90011 => const Color(0XFF262829);
  Color get gray90012 => const Color(0XFF242424);
  Color get gray90013 => const Color(0XFF212121);
// Grayd
  Color get gray3003d => const Color(0X3DE4E5E7);
// Indigo
  Color get indigo300 => const Color(0XFF648DDB);
  Color get indigo500 => const Color(0XFF5151C6);
  Color get indigo900 => const Color(0XFF2D0C57);
  Color get indigo90001 => const Color(0XFF05386B);
  Color get indigo90002 => const Color(0XFF1B1A57);
  Color get indigoA100 => const Color(0XFF888BF4);
  Color get indigoA400 => const Color(0XFF375DFB);
  Color get indigoA700 => const Color(0XFF1236F3);
  Color get indigoA70001 => const Color(0XFF4B39EF);
// LightBlue
  Color get lightBlue100 => const Color(0XFFB1EDFF);
// Pink
  Color get pinkA200 => const Color(0XFFF62E8E);
// Purple
  Color get purple900 => const Color(0XFF4B0082);
  Color get purpleA700 => const Color(0XFFAB1AF0);
// Red
  Color get red300 => const Color(0XFFEF6363);
  Color get red500 => const Color(0XFFEB4335);
  Color get redA700 => const Color(0XFFD80027);
// Teal
  Color get teal50 => const Color(0XFFD7F6F2);
  Color get teal500 => const Color(0XFF00B287);
  Color get teal900 => const Color(0XFF0E3E3E);
  Color get tealA100 => const Color(0XFFA8FFE9);
  Color get tealA400 => const Color(0XFF01F4A3);
  Color get tealA40001 => const Color(0XFF00F5A0);
// White
  Color get whiteA700 => const Color(0XFFFCFCFE);
  Color get whiteA70001 => const Color(0XFFFEFEFE);
// Yellow
  Color get yellow800 => const Color(0XFFF09819);
}
