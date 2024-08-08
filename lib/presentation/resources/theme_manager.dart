import 'package:assessment_test/presentation/resources/color_manager.dart';
import 'package:assessment_test/presentation/resources/font_manager.dart';
import 'package:assessment_test/presentation/resources/styles_manager.dart';
import 'package:flutter/material.dart';

ThemeData getAppTheme() {
  return ThemeData(
      primaryColor: ColorManager.primary,
    cardTheme: CardTheme(
        color: ColorManager.card,elevation: 4.0),
    textTheme:  TextTheme(
      displaySmall: getMediumStyle(color: ColorManager.primary,fontSize: FontSize.s12),
      bodySmall: getSemiBoldStyle(color: ColorManager.primary, fontSize: FontSize.s14),
      bodyMedium: getBoldStyle(color: ColorManager.primary, fontSize: FontSize.s16)
    )
  );
}