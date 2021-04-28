import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'custom_rich_text.dart';
import 'package:url_launcher/url_launcher.dart';

class IntroRight extends StatelessWidget {
  const IntroRight({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/intro_right_pic_1.png');
  }
}

class IntroLeft extends StatelessWidget {
  const IntroLeft({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomRichText(
          title: 'Introduction',
          color: Colors.green,
          fontSize: 24,
        ),
        CustomRichText(
          title: 'KARL JAN S. REGINALDO',
          fontSize: 36,
        ),
        CustomRichText(
          title: 'I create applications like Mobile, Web and Desktop',
          fontSize: 16,
          color: Colors.grey,
          fontWeight: FontWeight.normal,
        ),
        CustomRichText(
          title: 'I\'m using Flutter Frameworks and Figma for Wireframes',
          fontSize: 16,
          color: Colors.grey,
          fontWeight: FontWeight.normal,
        ),
        SizedBox(
          height: 20,
        ),
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () async {
              final url =
                  'https://drive.google.com/file/d/1BcxwaOU6WVc6K2MHXhY0n36_WDQDRdw2/view?usp=sharing';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
              color: Colors.green,
              child: Text(
                'Download CV',
                style: GoogleFonts.oswald(),
              ),
            ),
          ),
        )
      ],
    );
  }
}
