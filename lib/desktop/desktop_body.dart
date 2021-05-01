import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../components/contacts.dart';
import '../components/education.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../components/introduction.dart';
import '../components/project_wrap.dart';
import '../components/resources.dart';
import '../components/skills.dart';

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
          ),
          SizedBox(
            height: 100,
          ),
          Container(
            child: Row(
              children: [
                Expanded(
                  child: EducationLeft(),
                ),
                SizedBox(
                  width: 50.0,
                ),
                Expanded(
                  child: EducationRight(),
                )
              ],
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Container(
            child: Contacts(),
          )
        ],
      ),
    );
  }
}
