import 'dart:convert';

import 'package:http/http.dart' as http;
class HomeServics {

  Future<http.Response> postData(String Name, String Job)async{

    String URL = "https://reqres.in/api/users";

    Map data = {
      "name":Name,
      "job" : Job,
    };

   http.Response  respons = await http.post(Uri.parse(URL), body: json.encode(data));
   return respons;

  }

}