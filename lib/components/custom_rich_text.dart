import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomRichText extends StatelessWidget {
  const CustomRichText(
      {Key key,
      @required this.title,
      @required this.fontSize,
      this.color,
      this.fontWeight})
      : super(key: key);
  final String title;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: title,
            style: GoogleFonts.oswald(
                color: color ?? Colors.white,
                fontSize: fontSize,
                fontWeight: fontWeight ?? FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
