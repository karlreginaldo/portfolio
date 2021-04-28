import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
              color: Colors.green, fontSize: 36, fontWeight: FontWeight.bold),
        ),
      ]),
    );
  }
}
