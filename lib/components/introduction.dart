import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../constant/integers.dart';
import '../constant/strings.dart';
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
          title: kIntroTitle,
          color: Colors.green,
          fontSize: k24Size,
        ),
        CustomRichText(
          title: kIntroName,
          fontSize: k36Size,
        ),
        CustomRichText(
          title: kIntroSub1,
          fontSize: k16Size,
          color: Colors.grey,
          fontWeight: FontWeight.normal,
        ),
        CustomRichText(
          title: kIntroSub2,
          fontSize: k16Size,
          color: Colors.grey,
          fontWeight: FontWeight.normal,
        ),
        SizedBox(
          height: k20Size,
        ),
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () async {
              final url = kCVlink;
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                color: Colors.green,
                child: CustomRichText(
                  title: 'Download CV',
                )),
          ),
        )
      ],
    );
  }
}
