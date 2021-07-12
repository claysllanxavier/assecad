import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppTextStyles {
  static final TextStyle title = GoogleFonts.quicksand(
    textStyle: TextStyle(
      color: Color(0xffa29aac),
      fontSize: 18,
      fontWeight: FontWeight.w400,
    ),
  );

  static final TextStyle titleBold = GoogleFonts.quicksand(
    textStyle: TextStyle(
      color: Colors.black,
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
  );

  static final TextStyle body = GoogleFonts.quicksand(
    color: AppColors.grey,
    fontSize: 13,
    fontWeight: FontWeight.normal,
  );

  static final TextStyle cadtTitle = GoogleFonts.quicksand(
    color: Colors.black,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle cardBody = GoogleFonts.quicksand(
    color: Colors.black45,
    fontSize: 12,
    fontWeight: FontWeight.w600,
  );
}
