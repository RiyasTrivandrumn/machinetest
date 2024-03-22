import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Student database"),
      ),

      body:Column(


        children: [Text("Login"),
        SizedBox(
          height: 10,
        ),

        
         TextFormField(),
         SizedBox(height: 10,),
         TextFormField(),
         SizedBox(height: 10,),
         ElevatedButton(onPressed:() {
           
         }, child:Text("Sbmit"))
        ],
      ) ,
    );
  }
}