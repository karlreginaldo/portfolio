import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meta/meta.dart';
import 'package:portfolio/model/project.dart';

class Contact {
  final FaIcon icon;
  final String title;
  final String description;
  final Function onTap;
  final String url;
  Contact(
      {@required this.icon,
      @required this.title,
      @required this.description,
      this.onTap,
      this.url});
}

List<Contact> contacts = [
  Contact(
      title: 'ADDRESS',
      description: '100 Purok 1 Bacao 1 General Trias Cavite',
      icon: FaIcon(
        FontAwesomeIcons.mapMarkedAlt,
        color: Colors.green,
      ),
      url:
          'https://www.google.com/maps/place/14%C2%B023\'39.6%22N+120%C2%B053\'10.0%22E/@14.3943503,120.8858684,19z/data=!4m6!3m5!1s0x33962cb7a0cb9571:0xe66a79df874a147e!7e2!8m2!3d14.3943316!4d120.8861223',
      onTap: (String url) => launchURL(url)),
  Contact(
      title: 'GITHUB',
      description: 'karlreginaldo',
      icon: FaIcon(
        FontAwesomeIcons.github,
        color: Colors.green,
      ),
      url: 'https://github.com/karlreginaldo',
      onTap: (String url) => launchURL(url)),
  Contact(
      title: 'PHONE',
      description: '+639062452987',
      icon: FaIcon(
        FontAwesomeIcons.phoneAlt,
        color: Colors.green,
      ),
      url: 'sms:+639062452987',
      onTap: (String url) => launchURL(url)),
  Contact(
      title: 'EMAIL',
      description: 'reginaldokarljan@gmail.com\nkarljan.reginaldo@cvsu.edu.ph',
      icon: FaIcon(
        FontAwesomeIcons.envelope,
        color: Colors.green,
      ),
      url: 'mailto:reginaldokarljan@gmail.com,karljan.reginaldo@cvsu.edu.ph',
      onTap: (String url) => launchURL(url)),
];
