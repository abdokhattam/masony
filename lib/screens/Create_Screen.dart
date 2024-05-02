import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profinal/Data/Super_Class.dart';
import 'package:profinal/screens/Screen.dart';

import '../Data/DataBase.dart';


class CreatAccount extends StatefulWidget {
  CreatAccount({super.key});

  @override
  State<CreatAccount> createState() => _CreatAccountState();
}

class _CreatAccountState extends State<CreatAccount> {
  String a = '26'.tr;

  String b = '27'.tr;

  String c = '29'.tr;

  String d = '28'.tr;

  final controller = Get.put(DBRepo());
  final auth = Get.put(AuthRepo());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.red,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_sharp,
              color: Colors.white,
            ),
          )),
      body: ListView(
        children: [
          Container(
            decoration: const BoxDecoration(
              //border:Border.all(),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30)),
                color: Colors.red),
            height: MediaQuery.of(context).size.height * 0.10,
            width: MediaQuery.of(context).size.width,
            child:  Center(
                child: Text(
                  '16'.tr,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      letterSpacing: 5,
                      fontStyle: FontStyle.italic,
                      decorationStyle: TextDecorationStyle.solid),
                )),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: TextFormField(
              controller: controller.fname,
              decoration:  InputDecoration(
                labelStyle: TextStyle(color: Colors.cyan),
                icon: Icon(Icons.person),
                labelText: '22'.tr,
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: TextFormField(
              controller: controller.phone,
              decoration:  InputDecoration(
                labelStyle: TextStyle(color: Colors.cyan),
                icon: Icon(Icons.phone_outlined),
                labelText: '23'.tr,
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: TextFormField(
              controller:controller. email,
              decoration:  InputDecoration(
                labelStyle: TextStyle(color: Colors.cyan),
                icon: Icon(Icons.email),
                labelText: '24'.tr,
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: TextFormField(
              controller: controller.password,
              decoration:  InputDecoration(
                labelStyle: TextStyle(color: Colors.cyan),
                icon: Icon(Icons.lock_person),
                labelText: '20'.tr,
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: TextFormField(
              controller: controller.confpass,
              decoration:  InputDecoration(
                labelStyle: TextStyle(color: Colors.cyan),
                icon: Icon(Icons.lock),
                labelText: '25'.tr,
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: ListTile(
              title: Text(
                a,
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              trailing: PopupMenuButton(
                itemBuilder: (context) => [
                  PopupMenuItem(
                    child: Text(
                      b,
                    ),
                    value: b,
                  ),
                  PopupMenuItem(
                    child: Text(c),
                    value: c,
                  ),
                  PopupMenuItem(
                    child: Text(d),
                    value: d,
                  ),
                ],
                onSelected: (String l) {
                  setState(() {
                    a = l;
                  });
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 125, vertical: 50),
            child: TextButton(
              onPressed: () async {
                await auth.mySignUp(controller.email.text, controller.password.text);
                controller.uploadUser(a);
                setState(() {

                });
              },
              style: const ButtonStyle(
                  backgroundColor:
                  MaterialStatePropertyAll<Color>(Colors.cyan)),
              child: controller.isLoading ==true ? const Center(child: CircularProgressIndicator(),):
               Text('30'.tr),

            ),
          ),
        ],
      ),
    );
  }
}
