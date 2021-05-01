import 'package:flutter/material.dart';
import '../constant/colors.dart';
import '../constant/integers.dart';
import '../constant/strings.dart';

import 'custom_rich_text.dart';

class Resources extends StatelessWidget {
  const Resources({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomRichText(
          fontSize: k24Size,
          title: kResTitle,
          color: Colors.green,
        ),
        CustomRichText(
          fontSize: k16Size,
          title: kResDecription,
          color: kGray,
          fontWeight: FontWeight.normal,
        ),
        SizedBox(
          height: k50Size,
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
                    height: k16Size,
                  ),
                  CustomRichText(
                    title: kResSub1,
                    color: kGray,
                    fontWeight: FontWeight.normal,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: k16Size,
            ),
            Expanded(
              child: Column(
                children: [
                  Image.asset(
                    'assets/udemy.png',
                    scale: 5,
                  ),
                  SizedBox(
                    height: k16Size,
                  ),
                  CustomRichText(
                    title: kResSub2,
                    color: kGray,
                    fontWeight: FontWeight.normal,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: k16Size,
            ),
            Expanded(
              child: Column(
                children: [
                  Image.asset(
                    'assets/flutter_ph.png',
                    scale: 4,
                  ),
                  SizedBox(
                    height: k10Size,
                  ),
                  CustomRichText(
                    title: kResSub3,
                    color: kGray,
                    fontWeight: FontWeight.normal,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
