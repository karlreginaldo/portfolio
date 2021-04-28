import 'package:flutter/material.dart';
import '../components/introduction.dart';
import '../components/project_wrap.dart';
import '../components/resources.dart';
import '../components/skills.dart';
import 'package:responsive_builder/responsive_builder.dart';

class TabletBody extends StatelessWidget {
  const TabletBody({Key key, @required this.sizingInformation})
      : super(key: key);
  final SizingInformation sizingInformation;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          right: sizingInformation.screenSize.width * .05,
          left: sizingInformation.screenSize.width * .1),
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
            height: 50,
          ),
          Container(
            child: ProjectWrap(sizingInformation: sizingInformation),
          ),
          SizedBox(
            height: 50,
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
