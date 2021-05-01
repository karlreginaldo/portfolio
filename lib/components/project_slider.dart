import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../constant/colors.dart';
import '../constant/integers.dart';
import '../constant/strings.dart';
import 'custom_rich_text.dart';
import '../model/project.dart';

class ProjectSlider extends StatelessWidget {
  const ProjectSlider({
    Key key,
  }) : super(key: key);

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
        Expanded(
          child: CarouselSlider(
            options: CarouselOptions(
              autoPlayCurve: Curves.easeInOut,
              scrollPhysics: NeverScrollableScrollPhysics(),
              autoPlay: true,
              initialPage: 0,
              viewportFraction: 1,
            ),
            items: projects
                .map(
                  (project) => Column(
                    children: [
                      CustomRichText(
                        fontSize: k24Size,
                        title: project.title,
                      ),
                      SizedBox(
                        height: k24Size,
                      ),
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            project.imgSrc,
                          ),
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
                                  fontWeight: FontWeight.normal,
                                  title: 'Github',
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}
