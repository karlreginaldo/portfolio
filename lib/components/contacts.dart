import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
          fontSize: 24,
          title: 'Contacts',
          color: Colors.green,
        ),
        CustomRichText(
          fontSize: 16,
          title:
              'You can look me everywhere. The list below is my actives accounts and communications. Find me!',
          color: Colors.grey,
          fontWeight: FontWeight.normal,
        ),
        SizedBox(
          height: 50,
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
                                width: 16,
                              ),
                              CustomRichText(
                                  title: contact.title, fontSize: 16),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      CustomRichText(
                        title: contact.description,
                        fontSize: 14,
                        color: Colors.grey,
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
