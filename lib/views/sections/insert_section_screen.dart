import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profinal/Data/DataBase.dart';


class InsertSectionScreen extends StatefulWidget {
  const InsertSectionScreen({super.key});

  @override
  State<InsertSectionScreen> createState() => _InsertSectionScreenState();
}

class _InsertSectionScreenState extends State<InsertSectionScreen> {
  final controller = Get.put(DBRepo());
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),

      body: ListView(
        children: [
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width*0.8,
                  child: TextFormField(

                    controller: controller.sectionName,
                    decoration: InputDecoration(
                      labelText: "34".tr,
                      icon: Icon(Icons.add),
                      border: OutlineInputBorder(),

                    ),
                  ))
            ],
          ),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  width: MediaQuery.of(context).size.width*0.8,
                  child: TextFormField(
                      maxLines: 8,
                    controller: controller.sectionDetails,
                    decoration: InputDecoration(
                      labelText: "35".tr,
                      icon: Icon(Icons.description_outlined),
                      border: OutlineInputBorder(),

                    ),
                  ))
            ],
          ),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                controller.insertSection();
              }, child: Text("36".tr)),
            ],
          )
        ],
      ),
    );
  }
}
