import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controler/homeControler.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);


  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  HomeController homeControler = Get.put(HomeController());

  TextEditingController nameController = TextEditingController();
  TextEditingController jobController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Sign Up')),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Container(
            height: 300,
            width: 400,
            color: Colors.grey.withOpacity(0.2),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                          labelText: 'Name'
                      ),
                    ),
                    SizedBox(height: 16.0),
                    TextField(
                      controller: jobController,
                      decoration: InputDecoration(
                          labelText: 'Job'
                      ),
                    ),
                    SizedBox(height: 32.0),
                    ElevatedButton(
                      onPressed: () {
                        String name = nameController.text;
                        String job = jobController.text;
                        homeControler.postData(name, job);
                      },
                      child: Text('Sign Up'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

