// lib/utils/media_query_util.dart
import 'package:flutter/material.dart';



class MediaQueryUtil {
  // Get screen height
  static double screenHeight(BuildContext context) => MediaQuery.sizeOf(context).height;

  // Get screen width
  static double screenWidth(BuildContext context) => MediaQuery.sizeOf(context).width;


  // static Orientation orientation(BuildContext context) => MediaQuery.of(context).orientation;
  // static bool isPortrait(BuildContext context) => orientation(context) == Orientation.portrait;
  // static bool isLandscape(BuildContext context) => orientation(context) == Orientation.landscape;
  // static double devicePixelRatio(BuildContext context) => MediaQuery.of(context).devicePixelRatio;
  // static EdgeInsets safePadding(BuildContext context) => MediaQuery.of(context).padding;
}
