import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constant/colors.dart';
import 'package:portfolio/constant/integers.dart';

class Logo extends StatelessWidget {
  const Logo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(children: [
        TextSpan(
          text: 'K',
          style: GoogleFonts.oswald(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        TextSpan(
          text: '.',
          style: GoogleFonts.oswald(
              color: kGreen, fontSize: k36Size, fontWeight: FontWeight.bold),
        ),
      ]),
    );
  }
}
