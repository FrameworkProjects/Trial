import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mix/mix.dart';

final buttonMix = Style(
  $box.height(100),
  $box.width(200),
  $box.color.yellow(),
  $box.borderRadius(10),
);

Widget myBottomSheet(double width) {
  return Container(
    height: 380,
    width: width,
    color: Colors.white,
    child: Column(
      children: [
        Text(
          "A",
          style: GoogleFonts.quicksand(fontSize: 16),
        ),
      ],
    ),
  );
}
