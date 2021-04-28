import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/components/introduction.dart';
import 'package:portfolio/components/project_slider.dart';
import 'package:portfolio/components/resources.dart';
import 'package:portfolio/components/skills.dart';

class MobileBody extends StatefulWidget {
  const MobileBody({Key key}) : super(key: key);

  @override
  _MobileBodyState createState() => _MobileBodyState();
}

class _MobileBodyState extends State<MobileBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Container(
            height: 500,
            child: IntroLeft(),
          ),
          Container(
            height: 500,
            child: ProjectSlider(),
          ),
          Container(
            height: 1000,
            child: Column(
              children: [
                Expanded(child: SkillsLeft()),
                Expanded(child: SkillsRight()),
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
