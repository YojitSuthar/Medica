
import 'package:medica_assets/gen/assets.gen.dart';
class DoctorData{

  static final List doctorCategory = [
    "All",
    "General",
    "Dentist",
    "Nutritionist",
    "Ophthalmologist",
    "Radiologist",
    "Pediatric",
    "Neurologist",
    "Dermatologists",
    "General Surgeon",
    "Cardiologist",
  ];

  static final List<Map<String,dynamic>> topDoctor = [
    {
      'Image' : MyMedicaAssets.images.doctor1.keyName,
      'Name' : 'Dr. Jerome Bell',
      'Special': 'Cardiologist',
      'Reviews': ' 4.9 (4821 reviews)',
      "work": "Cardiologist"
    },
    {
      'Image' : MyMedicaAssets.images.doctor2.keyName,
      'Name' : 'Dr. Jenny Wilson',
      'Special': 'Dermatologists',
      'Reviews': ' 4.8 (3721 reviews)',
      "work": "Dermatologists "
    },
    {
      'Image' : MyMedicaAssets.images.doctor3.keyName,
      'Name' : 'Dr. Albert Flores',
      'Special': 'Pediatric',
      'Reviews': ' 4.8 (3921 reviews)',
      "work": "Nutritionist "
    },
    {
      'Image' : MyMedicaAssets.images.doctor4.keyName,
      'Name' : 'Dr. Jane Cooper',
      'Special': 'Neurologist',
      'Reviews': ' 4.9 (4921 reviews)',
      "work": "Ophthalmologist"
    },
    {
      'Image' : MyMedicaAssets.images.doctor5.keyName,
      'Name' :'Dr. Ralph Edwards',
      'Special': 'Dentist',
      'Reviews': ' 4.7 (2921 reviews)',
      "work": "Radiologist "
    },
    {
      'Image' : MyMedicaAssets.images.doctor6.keyName,
      'Name' :'Dr. Darrell Steward',
      'Special': 'Nutritionist',
      'Reviews': ' 4.8 (2521 reviews)',
      "work": "Ophthalmologist"
    },
  ];

  static List<Map<String,dynamic>> reviewOfPatient = [
    {
      'Image' : MyMedicaAssets.images.patient1.keyName,
      'Name' : 'Jane Cooper',
      'Date' : 'December 20,2022',
      'feedback' : 'The doctor is great!',
    },
    {
      'Image' :MyMedicaAssets.images.patient2.keyName,
      'Name' : 'Arlene McCoy',
      'Date' : 'July 19,2022',
      'feedback' : 'Great Experience',
    },
    {
      'Image' : MyMedicaAssets.images.patient3.keyName,
      'Name' : 'Annette black',
      'Date' : 'June 18,2022',
      'feedback' : 'perfect!',
    },
    {
      'Image' : MyMedicaAssets.images.patient4.keyName,
      'Name' : 'Savannah Nguyen',
      'Date' : 'May 17,2022',
      'feedback' : 'Nice person!',
    },
    {
      'Image' : MyMedicaAssets.images.patient5.keyName,
      'Name' : 'Kathryn Murphy',
      'Date' : 'April 16,2022',
      'feedback' : 'omg, this is amazing',
    },
    {
      'Image' : MyMedicaAssets.images.patient6.keyName,
      'Name' : 'Charlotte Han-lin',
      'Date' : 'March 15,2022',
      'feedback' : 'Great Experience',
    },
    {
      'Image' : MyMedicaAssets.images.patient8.keyName,
      'Name' : 'Lauralee Quintero',
      'Date' : 'January 13,2022',
      'feedback' : 'omg, this is amazing',
    },
  ];
}