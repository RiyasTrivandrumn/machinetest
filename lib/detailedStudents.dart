import 'package:flutter/material.dart';

class DetailedStudent extends StatelessWidget {

 final name;
 final age;
 final marks;
 


  const DetailedStudent({super.key,required this.name,required this.age,required this.marks});

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar:AppBar(
        title: Text("Name"),


      ),


      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
          
          children: [Text("Namr"),
          SizedBox(
            height: 5,
          ),
          Text("Age"),
          SizedBox(height: 5,),
          Text("MarkList")

          ],
            
          ),
        ),
      ),
    );
  }
}