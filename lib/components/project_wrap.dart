import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
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
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CustomRichText(
          fontSize: 24,
          title: 'Personal Projects',
          color: Colors.green,
        ),
        CustomRichText(
          fontSize: 16,
          color: Colors.grey,
          fontWeight: FontWeight.normal,
          title:
              'This project was my personal projects during quarantine. \nI\'ll make more personal project and update my code in github regularly',
        ),
        SizedBox(
          height: 50,
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
                      Text(
                        project.title,
                        style: GoogleFonts.oswald(fontSize: 24),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          project.imgSrc,
                          scale: sizingInformation.isTablet ? 5 : 3,
                        ),
                      ),
                      SizedBox(
                        height: 16,
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
                                color: Colors.green,
                                child: Text(
                                  'Download',
                                  style: GoogleFonts.oswald(),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 24,
                          ),
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () => project.onGithub(project.githubLink),
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 24, vertical: 8),
                                color: Colors.black,
                                child: Text(
                                  'Github',
                                  style: GoogleFonts.oswald(),
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
