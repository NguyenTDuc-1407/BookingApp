// ignore_for_file: non_constant_identifier_names

import 'dart:ui';

import 'package:booking/helper/size.dart';

mixin MyDimensions {
  // Max size safe area default without top and bottom
  static Size mySize = MySize.size;

  // Divide screen to 1000 unit, get one unit to make base
  static double ONE_UNIT_SIZE = MySize.getFontSize();

  // Font size text and icon
  static double FONT_SIZE_SPAN_SMALL_EXTRA = 15.0 * ONE_UNIT_SIZE; // 10
  static double FONT_SIZE_SPAN_SMALL = 22.0 * ONE_UNIT_SIZE; // 13
  static double FONT_SIZE_SPAN = 24.0 * ONE_UNIT_SIZE; // 14
  static double FONT_SIZE_H6 = 26.0 * ONE_UNIT_SIZE; // 16
  static double FONT_SIZE_DEFAULT = 22.5 * ONE_UNIT_SIZE;
  static double FONT_SIZE_H5 = 28.0 * ONE_UNIT_SIZE; // 18
  static double FONT_SIZE_H4 = 32.0 * ONE_UNIT_SIZE; // 22
  static double FONT_SIZE_H3 = 34.0 * ONE_UNIT_SIZE;
  static double FONT_SIZE_H2 = 36.0 * ONE_UNIT_SIZE;
  static double FONT_SIZE_H1 = 38.0 * ONE_UNIT_SIZE;

  // Padding , Margin
  static double SPACE_SIZE_1X = 10.0 * ONE_UNIT_SIZE;
  static double SPACE_SIZE_2X = 15.0 * ONE_UNIT_SIZE;
  static double SPACE_SIZE_3X = 20.0 * ONE_UNIT_SIZE;
  static double SPACE_SIZE_4X = 25.0 * ONE_UNIT_SIZE;
  static double SPACE_SIZE_5X = 30.0 * ONE_UNIT_SIZE;

  // BORDER RADIUS
  static double BORDER_RADIUS_1X = 5.0 * ONE_UNIT_SIZE;
  static double BORDER_RADIUS_2X = 7.0 * ONE_UNIT_SIZE;
  static double BORDER_RADIUS_3X = 10.0 * ONE_UNIT_SIZE;
  static double BORDER_RADIUS_4X = 15.0 * ONE_UNIT_SIZE;
  static double BORDER_RADIUS_5X = 25.0 * ONE_UNIT_SIZE;
  static double BORDER_RADIUS_6X = 30.0 * ONE_UNIT_SIZE;
  static double BORDER_RADIUS_7X = 50.0 * ONE_UNIT_SIZE;
}
