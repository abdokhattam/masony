import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profinal/Data/Super_Class.dart';
import 'package:profinal/screens/Forget_Screen.dart';
import 'package:profinal/screens/Screen.dart';

import '../Data/DataBase.dart';


class Login extends StatefulWidget {
  Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController username = TextEditingController();
  TextEditingController userpass = TextEditingController();
  final controller = Get.put(DBRepo());
  final auth = Get.put(AuthRepo());
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(backgroundColor: Colors.red,
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop();
        }, icon: Icon(Icons.arrow_back_ios_rounded,color: Colors.white),),
      ),
      body: ListView(
        children: [ Container(decoration:const BoxDecoration(//border:Border.all(),
            borderRadius: BorderRadius.only(bottomRight:Radius.circular(50),bottomLeft:Radius.circular(50)),
            color: Colors.red),
          height: MediaQuery.of(context).size.height*0.25,
          width: MediaQuery.of(context).size.width,

          child:  Center(child: Text('18'.tr,style: TextStyle(color: Colors.white,
              fontSize: 30,letterSpacing: 5,fontStyle: FontStyle.italic,
              decorationStyle: TextDecorationStyle.solid),
          )),
        ),
          SizedBox(height: 60,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: TextFormField(
              controller: username,
              decoration: InputDecoration(labelStyle: TextStyle(color: Colors.cyan),
                icon: Icon(Icons.phone_outlined),
                labelText: '19'.tr,
                border: OutlineInputBorder(
                ),

              ),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: TextFormField(
              controller: userpass,
              decoration: InputDecoration(labelStyle: TextStyle(color: Colors.cyan),
                icon: Icon(Icons.lock),
                labelText: '20'.tr,
                border: OutlineInputBorder(
                ),

              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 200),
              child: TextButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Forget_pas()));},
                child: Text('21'.tr),)
          ),
          SizedBox(height: 100,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 150),
            child: TextButton(
              onPressed: () {
                auth.mySignIn(username.text, userpass.text);
            }
              , child: Text('15'.tr, style: TextStyle(color: Colors.white,
              ),),
              style: ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Colors.cyan)
              ),

            ),
          ),
        ],
      ),
    );
  }
}