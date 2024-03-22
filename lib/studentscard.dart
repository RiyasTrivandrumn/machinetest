import 'package:flutter/material.dart';
import 'package:job/detailedStudents.dart';

class StudentsCard extends StatelessWidget {

  final name;
  final age;
  final marks;
  const StudentsCard({super.key,required this.name,required this.age, required this.marks});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder:(context) => DetailedStudent(age: age,name: name,marks: marks,),));
      },
      child: ListTile(
       leading: Icon(Icons.add_circle_outline),
      
       title:name ,
      
      
      
      ),
    );
  }
}