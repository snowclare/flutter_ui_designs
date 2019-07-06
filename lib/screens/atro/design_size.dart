import 'dart:math';

import 'package:flutter/material.dart';

const double _kDesignScreenHeight = 1624;
const double _kDesignScreenWidth = 750;
const double _kDesignScreenAspectRatio = 0.46;

double getRelativeHeight(double height, MediaQueryData mqData) {
  var approxDeviceHeight = (mqData.size.width / _kDesignScreenAspectRatio);
  var actualDeviceHeight = max(approxDeviceHeight, mqData.size.height);
  return height / _kDesignScreenHeight * actualDeviceHeight;
}

double getRelativeWidth(double width, MediaQueryData mqData) {
  return width / _kDesignScreenWidth * mqData.size.width;
}
