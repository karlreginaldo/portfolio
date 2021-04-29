import 'package:flutter/material.dart';
import 'package:portfolio/components/custom_rich_text.dart';
import 'package:portfolio/model/education.dart';

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
          title: 'Education',
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
              'These are the schools I went to before. I just want to add these in my portfolio',
        ),
        SizedBox(
          height: 15.0,
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
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                              ),
                              CustomRichText(
                                title: education.schoolName,
                                fontSize: 16,
                                color: Colors.green,
                              ),
                              CustomRichText(
                                title: education.date,
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ),
                        CustomRichText(
                          title: education.schoolAddress,
                          fontSize: 12,
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
