import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Skill {
  final String skill;
  final IconData iconData;
  final int percentage;
  final bool isSpecial;
  Skill(
      {@required this.skill,
      @required this.iconData,
      @required this.percentage,
      this.isSpecial = false});
}

List<Skill> skills = [
  Skill(
      skill: "Dart", iconData: FontAwesomeIcons.locationArrow, percentage: 90),
  Skill(skill: "Flutter", iconData: FontAwesomeIcons.dove, percentage: 90),
  Skill(skill: "Figma", iconData: FontAwesomeIcons.figma, percentage: 50),
  Skill(skill: "Python", iconData: FontAwesomeIcons.python, percentage: 25),
  Skill(skill: "Java", iconData: FontAwesomeIcons.java, percentage: 40),
  Skill(
    skill: "Clean Architecture (Flutter & Dart)",
    iconData: FontAwesomeIcons.cuttlefish,
    percentage: 100,
    isSpecial: true,
  ),
];
