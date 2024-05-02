import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:profinal/Data/DataBase.dart';

import '../style-others/Design.dart';

class DoctorScreenn extends StatefulWidget {

   DoctorScreenn({super.key});

  @override
  State<DoctorScreenn> createState() => _DoctorScreennState();
}

class _DoctorScreennState extends State<DoctorScreenn> {
  final controller = Get.put(DBRepo());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: FutureBuilder(
          future: controller.getAllDoctors(),
          builder: (context, m) {
            if (m.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return
                Stack(
                    children: [
                      ClipPath(
                          clipper: MyClipper(),
                          child: Container(
                            color: Colors.white,
                          )),
                      Padding(

                        padding: const EdgeInsets.all(8.0),
                        child: GridView.builder(
                            itemCount: controller.myDoctors.length,
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 12,
                              mainAxisSpacing: 12,
                            ),
                            itemBuilder: (c, i) {
                              return Column(
                                children: [CircleAvatar(backgroundImage:AssetImage("img/D.jpg"),radius: 46,),
                                  SizedBox(height: 20,),
                                  Row(
                                    children: [
                                      SizedBox(width: 30,),
                                      //Text("Name:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
                                      Center(child: Text(controller.myDoctors[i]['name'].toString(),style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
                                    ],
                                  ),
                                  const SizedBox(height: 5,),
                                  Row(
                                    children: [
                                      SizedBox(width: 30,),
                                     // Text("Phone:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
                                      Center(child: Text(controller.myDoctors[i]['phone'],style:TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
                                    ],
                                  ),
                                  const SizedBox(height: 5,),
                                  Row(
                                    children: [
                                      SizedBox(width: 30,),
                                      //Text("Time:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
                                      Center(child: Text(controller.myDoctors[i]['time'],style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
                                    ],
                                  ),
                                ],
                              );

                            }),
                      ),]
                );
            }
          }),
    );
  }
}