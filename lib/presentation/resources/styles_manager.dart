import 'package:flutter/material.dart';

import 'font_manager.dart';

TextStyle _getTextStyle(
    double fontSize, String fontFamily, FontWeight fontWeight, Color color) {
  return TextStyle(
      fontSize: fontSize,
      fontFamily: fontFamily,
      color: color,
      fontWeight: fontWeight);
}

// regular style

TextStyle getRegularStyle(
    {double? fontSize, required Color color}) {
  return _getTextStyle(
      fontSize ?? FontSize.s12, FontConstants.fontFamily, FontWeightManager.regular, color);
}
// light text style

TextStyle getLightStyle(
    {double? fontSize, required Color color}) {
  return _getTextStyle(
      fontSize ?? FontSize.s12, FontConstants.fontFamily, FontWeightManager.light, color);
}
// bold text style

TextStyle getBoldStyle(
    {double? fontSize, required Color color}) {
  return _getTextStyle(
      fontSize ?? FontSize.s12, FontConstants.fontFamily, FontWeightManager.bold, color);
}

// semi bold text style

TextStyle getSemiBoldStyle(
    {double? fontSize, required Color color}) {
  return _getTextStyle(
      fontSize ?? FontSize.s12, FontConstants.fontFamily, FontWeightManager.semiBold, color);
}


// medium text style

TextStyle getMediumStyle(
    {double? fontSize, required Color color}) {
  return _getTextStyle(
      fontSize ?? FontSize.s12, FontConstants.fontFamily, FontWeightManager.medium, color);
}










