import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../constant/colors.dart';
import '../constant/integers.dart';
import '../constant/strings.dart';
import '../model/project.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'custom_rich_text.dart';

class ProjectWrap extends StatelessWidget {
  const ProjectWrap({Key key, @required this.sizingInformation})
      : super(key: key);
  final SizingInformation sizingInformation;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomRichText(
          fontSize: k24Size,
          title: kProjTitle,
          color: kGreen,
        ),
        CustomRichText(
          fontSize: k16Size,
          color: kGray,
          fontWeight: FontWeight.normal,
          title: kProjDescription,
        ),
        SizedBox(
          height: k50Size,
        ),
        Wrap(
          alignment: WrapAlignment.center,
          direction: Axis.horizontal,
          children: projects
              .map(
                (project) => Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  child: Column(
                    children: [
                      CustomRichText(
                        title: project.title,
                        fontSize: k24Size,
                      ),
                      SizedBox(
                        height: k24Size,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          project.imgSrc,
                          scale: sizingInformation.isTablet ? 5 : 3,
                        ),
                      ),
                      SizedBox(
                        height: k16Size,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () =>
                                  project.onDownload(project.downloadLink),
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 24, vertical: 8),
                                color: kGreen,
                                child: CustomRichText(
                                  title: 'Download',
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: k24Size,
                          ),
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () => project.onGithub(project.githubLink),
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 24, vertical: 8),
                                color: kBlack,
                                child: CustomRichText(
                                  title: 'Github',
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
