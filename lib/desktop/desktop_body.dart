import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/components/custom_rich_text.dart';
import 'package:portfolio/components/introduction.dart';
import 'package:portfolio/components/project_slider.dart';
import 'package:portfolio/components/project_wrap.dart';
import 'package:portfolio/components/resources.dart';
import 'package:portfolio/components/skills.dart';
import 'package:portfolio/model/project.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

class DesktopBody extends StatelessWidget {
  const DesktopBody({Key key, @required this.sizingInformation})
      : super(key: key);
  final SizingInformation sizingInformation;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          right: sizingInformation.screenSize.width * .1,
          left: sizingInformation.screenSize.width * .2),
      child: Column(
        children: [
          Container(
            height: 500,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: IntroLeft()),
                Expanded(child: IntroRight())
              ],
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Container(
            child: ProjectWrap(
              sizingInformation: sizingInformation,
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Container(
            height: 500,
            child: Row(
              children: [
                Expanded(
                  child: SkillsLeft(),
                ),
                SizedBox(
                  width: 50.0,
                ),
                Expanded(
                  child: SkillsRight(),
                )
              ],
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Container(
            child: Resources(),
          )
        ],
      ),
    );
  }
}
