import 'package:flutter/material.dart';

class Skill {
  final String skill;
  final int percentage;
  final bool isSpecial;
  Skill(
      {@required this.skill,
      @required this.percentage,
      this.isSpecial = false});
}

List<Skill> skills = [
  Skill(
    skill: "Dart",
    percentage: 75,
  ),
  Skill(
    skill: "Flutter",
    percentage: 80,
  ),
  Skill(
    skill: "Figma",
    percentage: 50,
  ),
  Skill(
    skill: "Python",
    percentage: 25,
  ),
  Skill(
    skill: "Java",
    percentage: 40,
  ),
  Skill(
    skill: "Clean Architecture (Flutter & Dart)",
    percentage: 90,
    isSpecial: true,
  ),
];
