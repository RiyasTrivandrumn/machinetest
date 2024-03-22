import 'dart:convert';

import 'package:http/http.dart' as http;




class Service {


 static  Future<List> fetchdata() async{
  

  try{
  var response=await http.get(Uri.parse("https://api.jsonbin.io/v3/qs/65fd0530266cfc3fde9c052c"));





   if(response != null){

    Map data= jsonDecode(response.body);

    print(data);

      return data["data"];






   } else{

    throw Exception();
   }


  }catch (e){

    print(e);
    return Future.error("error: $e");

  }









}






}