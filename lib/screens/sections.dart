import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Data/DataBase.dart';
import '../views/sections/aaaaa.dart';
import '../style-others/Design.dart';
import '../views/doctors_details.dart';

class Sections extends StatefulWidget {
  const Sections({super.key});

  @override
  State<Sections> createState() => _SectionsState();
}

class _SectionsState extends State<Sections> {
  final controller = Get.put(DBRepo());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        body: Stack(
          children: [
            ClipPath(
                clipper: MyClipper(),
                child: Container(
                  color: Colors.white,
                )),
            FutureBuilder(
                future: controller.getAllSections(),
                builder: (context, m) {
                  if (m.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:GridView.builder(
                          itemCount: controller.mySections.length,
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 50,
                            mainAxisSpacing: 20,
                          ),
                          itemBuilder: (c, i) {
                            return GestureDetector(
                                onTap: () {
                                  Get.to(()=>SectionDetails(controller.mySections[i]));
                                },
                                child: Column(
                                  children: [SizedBox(height: 20,),

                                    Row(mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 150,
                                          height: 75,
                                          color: Colors.blueAccent,
                                          child: Center(
                                            child: Text(
                                              controller.mySections[i]['name']
                                                  .toString(),
                                              style: TextStyle(color: Colors.white,fontSize: 20,),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ));
                          }),
                    );
                  }
                }),
          ],
        ));
  }
}
