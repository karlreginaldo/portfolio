import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolio/constant/colors.dart';
import 'package:portfolio/constant/integers.dart';
import 'package:portfolio/constant/strings.dart';
import 'package:portfolio/model/contact.dart';

import 'custom_rich_text.dart';

class Contacts extends StatelessWidget {
  const Contacts({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomRichText(
          fontSize: k24Size,
          title: kContactsTitle,
          color: kGreen,
        ),
        CustomRichText(
          fontSize: k16Size,
          title: kContactsDescription,
          color: kGray,
          fontWeight: FontWeight.normal,
        ),
        SizedBox(
          height: k50Size,
        ),
        Wrap(
          direction: Axis.horizontal,
          children: contacts
              .map(
                (contact) => Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  width: 250,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () => contact.onTap(contact.url),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              contact.icon,
                              SizedBox(
                                width: k16Size,
                              ),
                              CustomRichText(
                                  title: contact.title, fontSize: k16Size),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: k24Size,
                      ),
                      CustomRichText(
                        title: contact.description,
                        color: kGray,
                        fontWeight: FontWeight.normal,
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
