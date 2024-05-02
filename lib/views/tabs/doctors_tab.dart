import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profinal/Data/DataBase.dart';
import 'package:profinal/views/doctors_details.dart';

class DoctorScreen extends StatefulWidget {

  const DoctorScreen({super.key});

  @override
  State<DoctorScreen> createState() => _DoctorScreenState();
}

class _DoctorScreenState extends State<DoctorScreen> {
  final controller = Get.put(DBRepo());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: controller.getAllDoctors(),
          builder: (context, m) {
            if (m.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return Padding(

                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                    itemCount: controller.myDoctors.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12,
                    ),
                    itemBuilder: (c, i) {
                      return Container(
                        color: Colors.blue,
                        child: Column(
                          children: [
                            Text(controller.myDoctors[i]['name'].toString()),
                            const SizedBox(height: 5,),
                            Text(controller.myDoctors[i]['phone']),
                            const SizedBox(height: 5,),
                            Text(controller.myDoctors[i]['time']),
                          ],

                        ),
                      );
                    }),
              );
            }
          }),
    );
  }
}
