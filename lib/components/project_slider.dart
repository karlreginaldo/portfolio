import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
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
                      Text(
                        project.title,
                        style: GoogleFonts.oswald(fontSize: 24),
                      ),
                      SizedBox(
                        height: 25,
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
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}
