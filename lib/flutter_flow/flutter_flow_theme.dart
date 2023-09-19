// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class FlutterFlowTheme {
  static FlutterFlowTheme of(BuildContext context) {
    return LightModeTheme();
  }

  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary;
  late Color secondary;
  late Color tertiary;
  late Color alternate;
  late Color primaryText;
  late Color secondaryText;
  late Color primaryBackground;
  late Color secondaryBackground;
  late Color accent1;
  late Color accent2;
  late Color accent3;
  late Color accent4;
  late Color success;
  late Color warning;
  late Color error;
  late Color info;

  late Color bgBg;
  late Color bgBg2;
  late Color bgBg3;
  late Color bgBg4;
  late Color bgBg5;
  late Color bgBg6;
  late Color bgStroke;
  late Color btnActive;
  late Color btnBtn;
  late Color btnDefault;
  late Color btnHover;
  late Color greenConfirm;
  late Color greenDone;
  late Color greenYes;
  late Color redNo;
  late Color txtText1;
  late Color txtText2;
  late Color txtText3;
  late Color txtText4;
  late Color txtText5;

  @Deprecated('Use displaySmallFamily instead')
  String get title1Family => displaySmallFamily;
  @Deprecated('Use displaySmall instead')
  TextStyle get title1 => typography.displaySmall;
  @Deprecated('Use headlineMediumFamily instead')
  String get title2Family => typography.headlineMediumFamily;
  @Deprecated('Use headlineMedium instead')
  TextStyle get title2 => typography.headlineMedium;
  @Deprecated('Use headlineSmallFamily instead')
  String get title3Family => typography.headlineSmallFamily;
  @Deprecated('Use headlineSmall instead')
  TextStyle get title3 => typography.headlineSmall;
  @Deprecated('Use titleMediumFamily instead')
  String get subtitle1Family => typography.titleMediumFamily;
  @Deprecated('Use titleMedium instead')
  TextStyle get subtitle1 => typography.titleMedium;
  @Deprecated('Use titleSmallFamily instead')
  String get subtitle2Family => typography.titleSmallFamily;
  @Deprecated('Use titleSmall instead')
  TextStyle get subtitle2 => typography.titleSmall;
  @Deprecated('Use bodyMediumFamily instead')
  String get bodyText1Family => typography.bodyMediumFamily;
  @Deprecated('Use bodyMedium instead')
  TextStyle get bodyText1 => typography.bodyMedium;
  @Deprecated('Use bodySmallFamily instead')
  String get bodyText2Family => typography.bodySmallFamily;
  @Deprecated('Use bodySmall instead')
  TextStyle get bodyText2 => typography.bodySmall;

  String get displayLargeFamily => typography.displayLargeFamily;
  TextStyle get displayLarge => typography.displayLarge;
  String get displayMediumFamily => typography.displayMediumFamily;
  TextStyle get displayMedium => typography.displayMedium;
  String get displaySmallFamily => typography.displaySmallFamily;
  TextStyle get displaySmall => typography.displaySmall;
  String get headlineLargeFamily => typography.headlineLargeFamily;
  TextStyle get headlineLarge => typography.headlineLarge;
  String get headlineMediumFamily => typography.headlineMediumFamily;
  TextStyle get headlineMedium => typography.headlineMedium;
  String get headlineSmallFamily => typography.headlineSmallFamily;
  TextStyle get headlineSmall => typography.headlineSmall;
  String get titleLargeFamily => typography.titleLargeFamily;
  TextStyle get titleLarge => typography.titleLarge;
  String get titleMediumFamily => typography.titleMediumFamily;
  TextStyle get titleMedium => typography.titleMedium;
  String get titleSmallFamily => typography.titleSmallFamily;
  TextStyle get titleSmall => typography.titleSmall;
  String get labelLargeFamily => typography.labelLargeFamily;
  TextStyle get labelLarge => typography.labelLarge;
  String get labelMediumFamily => typography.labelMediumFamily;
  TextStyle get labelMedium => typography.labelMedium;
  String get labelSmallFamily => typography.labelSmallFamily;
  TextStyle get labelSmall => typography.labelSmall;
  String get bodyLargeFamily => typography.bodyLargeFamily;
  TextStyle get bodyLarge => typography.bodyLarge;
  String get bodyMediumFamily => typography.bodyMediumFamily;
  TextStyle get bodyMedium => typography.bodyMedium;
  String get bodySmallFamily => typography.bodySmallFamily;
  TextStyle get bodySmall => typography.bodySmall;

  Typography get typography => ThemeTypography(this);
}

class LightModeTheme extends FlutterFlowTheme {
  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary = const Color(0xFFFFFFFF);
  late Color secondary = const Color(0xFF39D2C0);
  late Color tertiary = const Color(0xFFEE8B60);
  late Color alternate = const Color(0xFFE0E3E7);
  late Color primaryText = const Color(0xFFFFFFFF);
  late Color secondaryText = const Color(0xFFBBBEC1);
  late Color primaryBackground = const Color(0xFF0E161E);
  late Color secondaryBackground = const Color(0xFF121B26);
  late Color accent1 = const Color(0x4C4B39EF);
  late Color accent2 = const Color(0x4D39D2C0);
  late Color accent3 = const Color(0x4DEE8B60);
  late Color accent4 = const Color(0xCCFFFFFF);
  late Color success = const Color(0xFF249689);
  late Color warning = const Color(0xFFF9CF58);
  late Color error = const Color(0xFFFF5963);
  late Color info = const Color(0xFFFFFFFF);

  late Color bgBg = Color(0xFF0E161E);
  late Color bgBg2 = Color(0xFF121B26);
  late Color bgBg3 = Color(0xFF151C27);
  late Color bgBg4 = Color(0xFF1A2432);
  late Color bgBg5 = Color(0xFF182433);
  late Color bgBg6 = Color(0xFF314A68);
  late Color bgStroke = Color(0xFF1F2F42);
  late Color btnActive = Color(0xFF17728C);
  late Color btnBtn = Color(0xFF1E2E40);
  late Color btnDefault = Color(0xFF26BAE5);
  late Color btnHover = Color(0xFF1F96B8);
  late Color greenConfirm = Color(0xFF295143);
  late Color greenDone = Color(0xFF4DAE6E);
  late Color greenYes = Color(0xFF60CE86);
  late Color redNo = Color(0xFFCE6061);
  late Color txtText1 = Color(0xFFFFFFFF);
  late Color txtText2 = Color(0xFFBBBEC1);
  late Color txtText3 = Color(0xFF8F939B);
  late Color txtText4 = Color(0xFF757981);
  late Color txtText5 = Color(0xFF46525B);
}

abstract class Typography {
  String get displayLargeFamily;
  TextStyle get displayLarge;
  String get displayMediumFamily;
  TextStyle get displayMedium;
  String get displaySmallFamily;
  TextStyle get displaySmall;
  String get headlineLargeFamily;
  TextStyle get headlineLarge;
  String get headlineMediumFamily;
  TextStyle get headlineMedium;
  String get headlineSmallFamily;
  TextStyle get headlineSmall;
  String get titleLargeFamily;
  TextStyle get titleLarge;
  String get titleMediumFamily;
  TextStyle get titleMedium;
  String get titleSmallFamily;
  TextStyle get titleSmall;
  String get labelLargeFamily;
  TextStyle get labelLarge;
  String get labelMediumFamily;
  TextStyle get labelMedium;
  String get labelSmallFamily;
  TextStyle get labelSmall;
  String get bodyLargeFamily;
  TextStyle get bodyLarge;
  String get bodyMediumFamily;
  TextStyle get bodyMedium;
  String get bodySmallFamily;
  TextStyle get bodySmall;
}

class ThemeTypography extends Typography {
  ThemeTypography(this.theme);

  final FlutterFlowTheme theme;

  String get displayLargeFamily => 'Lulo';
  TextStyle get displayLarge => TextStyle(
        fontFamily: 'Lulo',
        color: theme.primaryText,
        fontWeight: FontWeight.w900,
        fontSize: 64.0,
      );
  String get displayMediumFamily => 'Lulo';
  TextStyle get displayMedium => TextStyle(
        fontFamily: 'Lulo',
        color: theme.primaryText,
        fontWeight: FontWeight.w900,
        fontSize: 48.0,
      );
  String get displaySmallFamily => 'Lulo';
  TextStyle get displaySmall => TextStyle(
        fontFamily: 'Lulo',
        color: theme.primaryText,
        fontWeight: FontWeight.w900,
        fontSize: 36.0,
      );
  String get headlineLargeFamily => 'SF Pro Display';
  TextStyle get headlineLarge => TextStyle(
        fontFamily: 'SF Pro Display',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 36.0,
      );
  String get headlineMediumFamily => 'Lulo';
  TextStyle get headlineMedium => TextStyle(
        fontFamily: 'Lulo',
        color: theme.primaryText,
        fontWeight: FontWeight.w900,
        fontSize: 28.0,
      );
  String get headlineSmallFamily => 'Lulo';
  TextStyle get headlineSmall => TextStyle(
        fontFamily: 'Lulo',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 24.0,
      );
  String get titleLargeFamily => 'SF Pro Display';
  TextStyle get titleLarge => TextStyle(
        fontFamily: 'SF Pro Display',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 24.0,
      );
  String get titleMediumFamily => 'Lulo';
  TextStyle get titleMedium => TextStyle(
        fontFamily: 'Lulo',
        color: theme.info,
        fontWeight: FontWeight.w900,
        fontSize: 18.0,
      );
  String get titleSmallFamily => 'SF Pro Display';
  TextStyle get titleSmall => TextStyle(
        fontFamily: 'SF Pro Display',
        color: theme.info,
        fontWeight: FontWeight.w500,
        fontSize: 18.0,
      );
  String get labelLargeFamily => 'Lulo';
  TextStyle get labelLarge => TextStyle(
        fontFamily: 'Lulo',
        color: theme.primary,
        fontWeight: FontWeight.w900,
        fontSize: 16.0,
      );
  String get labelMediumFamily => 'SF Pro Display';
  TextStyle get labelMedium => TextStyle(
        fontFamily: 'SF Pro Display',
        color: theme.primary,
        fontWeight: FontWeight.w500,
        fontSize: 16.0,
      );
  String get labelSmallFamily => 'Lulo';
  TextStyle get labelSmall => TextStyle(
        fontFamily: 'Lulo',
        color: theme.primary,
        fontWeight: FontWeight.w900,
        fontSize: 14.0,
      );
  String get bodyLargeFamily => 'SF Pro Display';
  TextStyle get bodyLarge => TextStyle(
        fontFamily: 'SF Pro Display',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
      );
  String get bodyMediumFamily => 'Lulo';
  TextStyle get bodyMedium => TextStyle(
        fontFamily: 'Lulo',
        color: theme.primaryText,
        fontWeight: FontWeight.w900,
        fontSize: 12.0,
      );
  String get bodySmallFamily => 'SF Pro Display';
  TextStyle get bodySmall => TextStyle(
        fontFamily: 'SF Pro Display',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 12.0,
      );
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String? fontFamily,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    FontStyle? fontStyle,
    bool useGoogleFonts = true,
    TextDecoration? decoration,
    double? lineHeight,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily!,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              letterSpacing: letterSpacing ?? this.letterSpacing,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              decoration: decoration,
              height: lineHeight,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              letterSpacing: letterSpacing,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              decoration: decoration,
              height: lineHeight,
            );
}
