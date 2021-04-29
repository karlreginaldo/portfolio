import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import '../model/skill.dart';

import 'custom_rich_text.dart';

class SkillsRight extends StatelessWidget {
  const SkillsRight({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomRichText(
          title: 'SKILLS',
          color: Colors.green,
          fontSize: 24,
        ),
        SizedBox(
          height: 10.0,
        ),
        CustomRichText(
          fontSize: 16,
          color: Colors.grey,
          fontWeight: FontWeight.normal,
          title:
              'This is all the skills listed below more will be added in due time. I currently learning python machine learning for competition',
        ),
        SizedBox(
          height: 15.0,
        ),
        Column(
          children: skills
              .map(
                (skill) => skill.isSpecial
                    ? Container(
                        margin: EdgeInsets.only(bottom: 15.0),
                        child: Row(
                          children: [
                            Expanded(
                              flex: skill.percentage,
                              child: Container(
                                padding: EdgeInsets.only(left: 10.0),
                                alignment: Alignment.centerLeft,
                                height: 38.0,
                                child: Text(
                                  skill.skill,
                                  style: GoogleFonts.oswald(fontSize: 16),
                                ),
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Expanded(
                              // remaining (blank part)
                              flex: 100 - skill.percentage,
                              child: Divider(),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            FaIcon(
                              skill.iconData,
                              color: Colors.green,
                            )
                          ],
                        ),
                      )
                    : Container(
                        margin: EdgeInsets.only(bottom: 15.0),
                        child: Row(
                          children: [
                            Expanded(
                              flex: skill.percentage,
                              child: Container(
                                padding: EdgeInsets.only(left: 10.0),
                                alignment: Alignment.centerLeft,
                                height: 38.0,
                                child: Text(
                                  skill.skill,
                                  style: GoogleFonts.oswald(fontSize: 16),
                                ),
                                color: Colors.green,
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Expanded(
                              // remaining (blank part)
                              flex: 100 - skill.percentage,
                              child: Divider(),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            FaIcon(skill.iconData, color: Colors.green)
                          ],
                        ),
                      ),
              )
              .toList(),
        )
      ],
    );
  }
}

class SkillsLeft extends StatelessWidget {
  const SkillsLeft({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/intro_right_pic_2.png",
      width: 300.0,
    );
  }
}
