import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color purple = Color.fromRGBO(77, 16, 236, 1);
const Color pink = Color.fromRGBO(184, 99, 235, 1);
const Color defaultIcon = Color.fromRGBO(144, 148, 178, 1);

TextStyle mainStyle(double size, Color color) {
  return GoogleFonts.signika(
    fontSize: size,
    fontWeight: FontWeight.w600,
    color: color,
  );
}

TextStyle regularFont(double size, Color color, FontWeight fontweight) {
  return GoogleFonts.openSans(
    fontSize: size,
    fontWeight: fontweight,
    color: color,
  );
}

BoxShadow shadowList() {
  return BoxShadow(
      blurRadius: 8,
      spreadRadius: 1,
      color: Colors.black.withOpacity(0.2),
      offset: const Offset(0, 4));
}
