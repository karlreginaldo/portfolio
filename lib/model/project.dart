import 'package:meta/meta.dart';
import 'package:url_launcher/url_launcher.dart';

class Project {
  final String title;
  final String description;
  final String imgSrc;
  final String githubLink;
  final String downloadLink;
  final Function onGithub;
  final Function onDownload;
  Project({
    @required this.title,
    @required this.description,
    @required this.imgSrc,
    @required this.githubLink,
    @required this.downloadLink,
    @required this.onGithub,
    @required this.onDownload,
  });
}

List<Project> projects = [
  Project(
      onGithub: (String url) async => launchURL(url),
      onDownload: (String url) async => launchURL(url),
      title: 'BMI CALCULATOR',
      description:
          'This is my first app with proper UI, When I finished it I was thinking that I can to build huge app like Facebook and Spotify😅',
      githubLink: 'https://github.com/mikagura12/bmi_calculator',
      downloadLink:
          'https://drive.google.com/file/d/1hSPe6GHQal7lYSHp2o3ix0uMSmAGFCu_/view?usp=sharing',
      imgSrc: 'assets/projects/bmi_mockup.png'),
  Project(
      onGithub: (String url) => launchURL(url),
      onDownload: (String url) async => launchURL(url),
      title: 'TODO LIST',
      description:
          'I built this app to take and write my steps on my exercise every morning💪',
      githubLink: 'https://github.com/mikagura12/todo_list',
      downloadLink:
          'https://drive.google.com/file/d/1ybFlnYeoo1gqRwooV4KKysFof4GfZjOG/view?usp=sharing',
      imgSrc: 'assets/projects/todo_list.png'),
  Project(
      onGithub: (String url) => launchURL(url),
      onDownload: (String url) async => launchURL(url),
      title: 'CVSU PORTAL',
      description:
          'I just test the webview and it turns out that I can open my portal in my university📱',
      githubLink: 'https://github.com/mikagura12/cvsu_portal',
      downloadLink:
          'https://drive.google.com/file/d/1PC361E7xrIMJeVk0mhnXWq3T-qxijJfC/view?usp=sharing',
      imgSrc: 'assets/projects/cvsu_portal.png'),
  Project(
      onGithub: (String url) => launchURL(url),
      onDownload: (String url) async => launchURL(url),
      title: 'CURIOUS DIGIT',
      description:
          'This app was inspired by reso coder\'s tutorial and I just add some features to make it broad. I applied clean architecture by Uncle Bob',
      githubLink: 'https://github.com/mikagura12/curious_digit',
      downloadLink:
          'https://drive.google.com/file/d/1PD0_ePZPdFbhz6YfIqZtptJfWSKvVe0c/view?usp=sharing',
      imgSrc: 'assets/projects/curious_digit.png'),
];
void launchURL(url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
