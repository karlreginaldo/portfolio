import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constant/colors.dart';
import '../constant/integers.dart';
import '../constant/strings.dart';
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
          title: kSkillTitle,
          color: kGreen,
          fontSize: k24Size,
        ),
        SizedBox(
          height: k10Size,
        ),
        CustomRichText(
          fontSize: k16Size,
          color: kGray,
          fontWeight: FontWeight.normal,
          title: kSkillDescription,
        ),
        SizedBox(
          height: k14Size,
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
                                child: CustomRichText(
                                  fontSize: k16Size,
                                  fontWeight: FontWeight.normal,
                                  title: skill.skill,
                                ),
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            SizedBox(
                              width: k10Size,
                            ),
                            Expanded(
                              // remaining (blank part)
                              flex: 100 - skill.percentage,
                              child: Divider(),
                            ),
                            SizedBox(
                              width: k10Size,
                            ),
                            FaIcon(
                              skill.iconData,
                              color: kGreen,
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
                                child: CustomRichText(
                                  fontSize: k16Size,
                                  fontWeight: FontWeight.normal,
                                  title: skill.skill,
                                ),
                                color: kGreen,
                              ),
                            ),
                            SizedBox(
                              width: k10Size,
                            ),
                            Expanded(
                              // remaining (blank part)
                              flex: 100 - skill.percentage,
                              child: Divider(),
                            ),
                            SizedBox(
                              width: k10Size,
                            ),
                            FaIcon(skill.iconData, color: kGreen)
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
