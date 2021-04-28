import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:portfolio/components/custom_rich_text.dart';
import 'package:portfolio/model/project.dart';

class Header {
  final String title;
  final Function onTap;
  final bool isSpecial;

  Header({
    @required this.title,
    @required this.onTap,
    this.isSpecial = false,
  });
}

final List<Header> headerItem = [
  Header(
      title: 'INTRODUCTION',
      onTap: (BuildContext context) => _showMyDialog(context)),
  Header(
      title: 'PROJECTS',
      onTap: (BuildContext context) => _showMyDialog(context)),
  Header(
      title: 'SKILLS', onTap: (BuildContext context) => _showMyDialog(context)),
  Header(
      title: 'RESOURCES',
      onTap: (BuildContext context) => _showMyDialog(context)),
  Header(
      title: 'CONTACT', onTap: (String url) => launchURL(url), isSpecial: true),
];

Future<void> _showMyDialog(BuildContext context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: CustomRichText(
          fontSize: 24,
          color: Colors.green,
          title: 'One Page Scroll View',
        ),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              CustomRichText(
                fontSize: 16,
                color: Colors.grey,
                title: 'This feature is under maintenance',
              ),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: CustomRichText(
              fontSize: 16,
              title: 'Back',
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
