import 'package:flutter/material.dart';
import 'package:profinal/screens/Login_Screen.dart';



class Forget_pas extends StatefulWidget {
  const Forget_pas({super.key});

  @override
  State<Forget_pas> createState() => _Forget_pasState();
}

class _Forget_pasState extends State<Forget_pas> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: Icon(Icons.keyboard_backspace,color: Colors.black,),
      ),
      body: ListView(
        children: [    SizedBox(height: 10,),

          Center(child: Text('search your account',style: TextStyle(fontSize: 20),)),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(30),
            child: TextFormField(
              decoration: const InputDecoration(
                labelStyle: TextStyle(color: Colors.black),
                icon: Icon(Icons.phone),
                labelText: 'Enter phone',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 150),
            child: TextButton(onPressed: (){}, child: Text('continue', style: TextStyle(color: Colors.white,
            ),),
              style: ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Colors.blue)
              ),

            ),
          ),
        ],
      ),
    );
  }
}
