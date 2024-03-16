import 'package:flutter/cupertino.dart';

class ScreenLockConfig {
  const ScreenLockConfig({
    this.backgroundColor,
    this.titleTextStyle,
    this.textStyle,
    this.themeData,
    this.primaryColor,
  });

  /// Background color of the ScreenLock.
  final Color? backgroundColor;

  /// Text style for title Texts.
  final TextStyle? titleTextStyle;

  /// Text style for other Texts.
  final TextStyle? textStyle;

  /// Primary color of the ScreenLock.
  final Color? primaryColor;

  /// Base [ThemeData] that is overridden by other specified values.
  final CupertinoThemeData? themeData;

  /// Returns this config as a [ThemeData].
  CupertinoThemeData toThemeData() {
    return (themeData ?? const CupertinoThemeData()).copyWith(
      scaffoldBackgroundColor: backgroundColor,
      primaryColor: primaryColor,
      // outlinedButtonTheme: OutlinedButtonThemeData(style: buttonStyle),
      // textTheme: CupertinoTextThemeData(
      //   headline6: titleTextStyle,
      //   bodyText2: textStyle,
      // ),
    );
  }

  /// Copies a [ScreenLockConfig] with new values.
  ScreenLockConfig copyWith({
    Color? backgroundColor,
    TextStyle? titleTextStyle,
    TextStyle? textStyle,
    CupertinoThemeData? themeData,
  }) {
    return ScreenLockConfig(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      titleTextStyle: titleTextStyle ?? this.titleTextStyle,
      textStyle: textStyle ?? this.textStyle,
      themeData: themeData ?? this.themeData,
    );
  }

  /// Default [ScreenLockConfig].
  static const ScreenLockConfig defaultConfig = ScreenLockConfig(
    primaryColor: CupertinoColors.systemYellow,
    backgroundColor: Color(0x00000000),
    titleTextStyle: TextStyle(
      color: CupertinoColors.label,
      fontSize: 20,
    ),
    textStyle: TextStyle(
      color: CupertinoColors.label,
      fontSize: 18,
    ),
  );
}
