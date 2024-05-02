import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'package:profinal/Data/DataBase.dart';
class InsertDoctorScreen extends StatefulWidget {
  const InsertDoctorScreen({super.key});

  @override
  State<InsertDoctorScreen> createState() => _InsertDoctorScreenState();
}

class _InsertDoctorScreenState extends State<InsertDoctorScreen> {
  final controller=Get.put(DBRepo());

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar:AppBar(),
      body: ListView(
        children: [
          SizedBox(height: 20,),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width*0.8,
                child: TextFormField(
                  controller: controller.doctorName,
                  decoration: InputDecoration(
                    labelText: "37".tr,
                    icon: Icon(Icons.account_circle_outlined),
                    border: OutlineInputBorder(),
                  ),
                ),
              )
            ],),
          SizedBox(height: 20,),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width*0.8,
                child: TextFormField(
                  controller: controller.doctorPhone,
                  decoration: InputDecoration(
                    labelText: "38".tr,
                    icon: Icon(Icons.phone_android),
                    border: OutlineInputBorder(),
                  ),
                ),
              )
            ],),
          SizedBox(height: 20,),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width*0.8,
                child: TextFormField(
                  controller: controller.doctorTime,
                  decoration: InputDecoration(
                    labelText: "39".tr,
                    icon: Icon(Icons.access_time_outlined),
                    border: OutlineInputBorder(),
                  ),
                ),
              )
            ],),

          SizedBox(height: 20,),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){controller.insertDoctors();},
                  child:controller.isLoading==true?
                  const Center(child: CircularProgressIndicator(),):
                  Text('insert') ),
            ],
          ),



        ],
      ),

    );
  }
}