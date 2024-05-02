import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profinal/Data/Super_Class.dart';
import 'package:profinal/Data/one.dart';
import 'package:profinal/views/tabs/tap1.dart';
import 'package:profinal/screens/sections.dart';
import 'package:profinal/views/sections/insert_section_screen.dart';
import 'package:profinal/views/tabs/doctors_tab.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

import '../Data/translate2.dart';
import '../views/dactors/insert_doctors_screen.dart';
import '../views/doctors_details.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isPressed = false;
  final controller = Get.put(AuthRepo());

  @override
  Widget build(BuildContext context) {
    LangController controllerlang =Get.find();
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          drawer: Drawer(
            child: ListView(
              children: [
                DrawerHeader(
                  padding: EdgeInsets.zero,
                  child: Image.asset(
                    'img/2.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
                ListTile(
                  trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.perm_device_information_outlined)),
                  title: Text('5'.tr,style: TextStyle(fontSize: 20),),
                ),
                Divider(),
                GestureDetector(
                  onTap: (){
                    Get.to(()=>const InsertSectionScreen());
                  },
                  child: ListTile(
                    trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.add)),
                    title: Text('6'.tr,style: TextStyle(fontSize: 20),),








                  ),
                ),
                Divider(),
                GestureDetector(
                  onTap: (){Get.to(()=>InsertDoctorScreen());},
                  child: ListTile(
                    trailing: IconButton(
                        onPressed: () {
                        },
                        icon: Icon(Icons.edit_calendar)),
                    title: Text('7'.tr,style: TextStyle(fontSize: 20),),
                  ),
                ),








                Divider(),
                ListTile(
                  trailing: IconButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => One()));
                      },
                      icon: const Icon(Icons.edit_outlined)),
                  title:  Text('8'.tr,style: const TextStyle(fontSize: 20),),
                ),
                const Divider(),
                ListTile(
                  trailing: IconButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Tab1()));
                      },
                      icon: const Icon(Icons.edit_outlined)),
                  title: Text('9'.tr,style: const TextStyle(fontSize: 20),),
                ),
                const Divider(),
                ListTile(
                  trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.woman_rounded)),
                  title:  Text('10'.tr,style: const TextStyle(fontSize: 20),),
                ),
                const Divider(),
                ListTile(
                  trailing: IconButton(
                      onPressed: () {
                        showDialog(context: context, builder: (_) {
                          return AlertDialog(
                          title: Text("11".tr),
                            content: Text('26'.tr),
                            actions: [
                              const SizedBox(width: 10,),
                              ElevatedButton(onPressed: (){controllerlang.Lang("ar");}, child: Text("31".tr)),
                              const SizedBox(width: 10,),
                              ElevatedButton(onPressed: (){controllerlang.Lang("en");}, child: Text("32".tr)),
                              const SizedBox(width: 10,),
                              ElevatedButton(onPressed: (){ Navigator.of(context).pop();}, child: Text("33".tr)),
                              const SizedBox(width: 10,),
                            ],

                          );

                        });
                      }, icon: const Icon(Icons.language)),
                  title:  Text('11'.tr,style: TextStyle(fontSize: 20),),
                ),
                const Divider(),
                GestureDetector(
                  // splash color
                  onTap: () {
                    controller.mySignOut();
                  },
                  child: ListTile(
                    trailing: IconButton(
                        onPressed: () {}, icon: const Icon(Icons.logout)),
                    title:  Text('12'.tr,style: TextStyle(fontSize: 20),),
                  ),
                ),
                const Divider(),
                ListTile(
                  trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.wifi_protected_setup_rounded)),
                  title: Text('13'.tr,style: TextStyle(fontSize: 20),),
                ),
              ],
            ),
          ),
          appBar: AppBar(
            bottom:  TabBar(tabs: [
              Tab(
                child: Text('1'.tr,style:TextStyle(fontSize: 16),),
              ),
              Tab(
                child: Text('2'.tr,style:TextStyle(fontSize: 16),),
              ),
              Tab(
                child: Text('3'.tr,style:TextStyle(fontSize: 12),),
              ),
              Tab(
                child: Text('4'.tr,style:TextStyle(fontSize: 15),),
              ),
            ]),
          ),
          body: GestureDetector(
            onTap: (){
              isPressed =true;
              setState(() {

              });
            },
            child: Stack(
              children: [
                 TabBarView(children: [
                  Sections(),
                  DoctorScreenn(),
                  Sections(),
                  Sections(),
                ]),
                isPressed == false
                    ? SizedBox(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        child: Image.asset(
                          'img/3.jpeg',
                          fit: BoxFit.cover,
                        ))
                    : const SizedBox()
              ],
            ),
          ),
        ));
  }
}
