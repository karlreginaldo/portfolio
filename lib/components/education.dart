import 'package:flutter/material.dart';
import 'custom_rich_text.dart';
import '../constant/colors.dart';
import '../constant/integers.dart';
import '../constant/strings.dart';
import '../model/education.dart';

class EducationRight extends StatelessWidget {
  const EducationRight({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomRichText(
          title: kEducationTitle,
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
          title: kEducationDescription,
        ),
        SizedBox(
          height: k14Size,
        ),
        Column(
          children: educations
              .map(
                (education) => Container(
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 24),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomRichText(
                                title: education.category,
                                fontSize: k16Size,
                                fontWeight: FontWeight.normal,
                              ),
                              CustomRichText(
                                title: education.schoolName,
                                fontSize: k16Size,
                                color: kGreen,
                              ),
                              CustomRichText(
                                title: education.date,
                                fontSize: k14Size,
                                fontWeight: FontWeight.normal,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ),
                        CustomRichText(
                          title: education.schoolAddress,
                          fontSize: k12Size,
                          fontWeight: FontWeight.normal,
                          color: Colors.white.withOpacity(0.5),
                        ),
                      ],
                    ),
                  ),
                ),
              )
              .toList(),
        )
      ],
    );
  }
}

class EducationLeft extends StatelessWidget {
  const EducationLeft({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/reginaldo1.png",
      width: 300.0,
    );
  }
}
