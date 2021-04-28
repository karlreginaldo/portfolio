import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'custom_rich_text.dart';

class Resources extends StatelessWidget {
  const Resources({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomRichText(
          fontSize: 24,
          title: 'Resources',
          color: Colors.green,
        ),
        CustomRichText(
          fontSize: 16,
          title:
              'Thanks to all resources below. It helps me to grow and makes me productive every single day. Thank you!',
          color: Colors.grey,
          fontWeight: FontWeight.normal,
        ),
        SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Column(
                children: [
                  Image.asset(
                    'assets/reso_coder.png',
                    scale: 5,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Reso Coder helps me to create and build clean code with his tutorial clean architecture by uncle bob using flutter!',
                    overflow: TextOverflow.clip,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.oswald(color: Colors.grey),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: Column(
                children: [
                  Image.asset(
                    'assets/udemy.png',
                    scale: 5,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Udemy is one of my best resources. It\'s pain to watch the video without understanding it so I spend my 8 hours time every single day just to learn and experience it!',
                    overflow: TextOverflow.clip,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.oswald(color: Colors.grey),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: Column(
                children: [
                  Image.asset(
                    'assets/flutter_ph.png',
                    scale: 4,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Flutter PH is one my favorite community. There\'s a lot of friendly people and they help you to make your bugs out!',
                    overflow: TextOverflow.clip,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.oswald(color: Colors.grey),
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
