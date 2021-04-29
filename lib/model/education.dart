import 'package:meta/meta.dart';

class Education {
  final String category;
  final String schoolName;
  final String schoolAddress;
  final String date;
  Education({
    @required this.category,
    @required this.schoolName,
    @required this.schoolAddress,
    @required this.date,
  });
}

List<Education> educations = [
  Education(
    category: 'College',
    schoolName: 'Cavite State University - CCAT',
    schoolAddress: 'Rosario, Cavite',
    date: '07/2020 - Present',
  ),
  Education(
    category: 'Senior High',
    schoolName: 'Luis Y. Ferrer Jr. Senior High School',
    schoolAddress: 'General Trias, Cavite',
    date: '06/2018 - 04/2020',
  ),
  Education(
    category: 'Junior High',
    schoolName: 'Governor Ferrer Memorial National High School',
    schoolAddress: 'General Trias, Cavite',
    date: '06/2014 - 04/2018',
  ),
  Education(
    category: 'Elementary',
    schoolName: 'Brgy. Tambubong Elementary School',
    schoolAddress: 'Bocaue, Bulacan',
    date: '06/2008 - 04/2014',
  ),
];
