//import 'package:flutter/material.dart';
//import 'package:get/get.dart';
//import 'package:post_api/Screen/model.dart';
//import 'package:post_api/controler/homeControler.dart';




/*class Info extends StatefulWidget {
  const Info({Key? key}) : super(key: key);

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Obx(
          () => ListView.builder(
            itemCount: homeController.list.length,
            itemBuilder: (context, index) {
              Model data = homeController.list[index];

              return Card(
                child: ListTile(
                  title: Text('Name: ${data.name}'),
                  subtitle: Text('Job: ${data.job}'),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
*/