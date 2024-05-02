import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profinal/screens/Screen.dart';


class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: GestureDetector(
        onTap: (){
         Get.to(()=>HomeScreen());

        },
        child: Image.asset('img/1.jpg'),
      ),
    );
  }
}
