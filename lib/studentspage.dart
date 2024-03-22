import 'package:flutter/material.dart';
import 'package:job/functions.dart';
import 'package:job/studentscard.dart';

class StudentsHome extends StatefulWidget {
  const StudentsHome({super.key});

  @override
  State<StudentsHome> createState() => _StudentsHomeState();
}

class _StudentsHomeState extends State<StudentsHome> {

  @override
  void initState() {

    Service.fetchdata();
    // TODO: implement initState
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Students",),
      ),

      body:Container(
      child: FutureBuilder<List>(future: Service.fetchdata(), builder:(context, snapshot) {
        if(snapshot.connectionState == ConnectionState.waiting){

          return Center(
            child: CircularProgressIndicator(),
          );
        }
        else{

           return Container(child: ListView.builder(
            itemCount: snapshot.data!.length,
            
            itemBuilder:(context, index) {

            

            return StudentsCard(name: snapshot.data![index]["name"],
            age: snapshot.data![index]["age"],
            marks: snapshot.data![index]["marks"],
            ); 
             
           },));


        }


        
      },),

      ),
    );
  }
}