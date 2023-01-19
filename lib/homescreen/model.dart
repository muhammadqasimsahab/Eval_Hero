import 'package:flutter/material.dart';
import 'class.dart';

final
List<String> name_person= [
  "John Smith",
  "Sara john",
  "Brad Snow",
  "Jennifer Dan",
];
List imageurl = [

  'images/img_3.png',
  'images/img_4.png',
  'images/img_5.png',
  'images/img_6.png',
];
List<String> traine= [
  "Trainee",
  "Trainee",
  "Trainee",
  "Trainee",
];

List<String> evalution_data= [
  'Evaluation data',
  'Evaluation data',
  'Evaluation data',
  'Evaluation data',

];
List<String> view= [
  'View',
  'View',
  'View',
  'View',

];
List<String> select= [
  'Select',
  'Select',
  'Select',
  'Select',

];
List<String> reject= [
  'reject',
  'reject',
  'reject',
  'reject',

];
List<String> data_of_eval= [
  'July 1, 2022',
  'July 2, 2022',
  'July 3, 2022',
  'July 4, 2022',

];

List<String> examiner= [
  'Brad Snow',
  'Brad Snow',
  'Brad Snow',
  'Brad Snow',

];

List<String> Scene_size_up= [
  '6',
  '7',
  '8',
  '9',

];
List<String> PRIMARY_SURVEY
= [
  'Select',
  'Select',
  'Select',
  'Select',

];


List<String> REASSESSMENT= [
  'None',
  'None',
  'None',
  'None',

];


List<String> Total= [
  '34',
  '35',
  '36',
  '37',

];

List<String> age= [
  '34',
  '35',
  '36',
  '37',

];
List<String> field= [
  'Trainer',
  'Trainer',
  'Trainer',
  'Trainer',

];
List<String> contact= [
  '+123456789',
  '+123456789',
  '+123456789',
  '+123456789',

];
List<String> email= [
  'michel123@xyz.com',
  'michel123@xyz.com',
  'michel123@xyz.com',
  'michel123@xyz.com',

];

final List<AllDataModel> itemData = List.generate(
    name_person.length,
        (index) => AllDataModel('${name_person[index]}','${imageurl[index]}',
      '${view[index]}','${traine[index]}','${evalution_data[index]}',
          '${age[index]}','${field[index]}','${contact[index]}','${email[index]}',
          '${data_of_eval[index]}','${examiner[index]}',
          '${Scene_size_up[index]}','${PRIMARY_SURVEY[index]}','${REASSESSMENT[index]}','${Total[index]}',
          '${select[index]}','${reject[index]}',

    )
);