
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:post_api/services/homeServices.dart';

class HomeController extends GetxController {
  //List<Model> list = [];

  HomeServics homeServics = HomeServics();

  void postData(String Name, String Job) async {
    try {
      http.Response respons = await homeServics.postData(Name, Job);
      if (respons.statusCode == 201) {

        print(respons.body);

        /*List<dynamic> DataList = json.decode(respons.body);
        DataList.forEach((element) {

          print(respons.body);

          list.add(Model.fromJson(element));


        });*/
      }
    } catch (value) {
      print(value);
    }
  }
}
