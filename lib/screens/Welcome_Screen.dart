import 'package:get/get.dart';
import 'package:profinal/screens/Create_Screen.dart';
import 'package:flutter/material.dart';
import 'package:profinal/screens/Login_Screen.dart';

class Welcome extends StatefulWidget {
  Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(
        children: [
          Container(decoration:const BoxDecoration(//border:Border.all(),
              borderRadius: BorderRadius.only(bottomRight:Radius.circular(50),bottomLeft:Radius.circular(50)),
              color: Colors.red),
            height: MediaQuery.of(context).size.height*0.5,
            width: MediaQuery.of(context).size.width,

            child:  Center(child: Text('14'.tr,style: TextStyle(color: Colors.white,
                fontSize: 30,letterSpacing: 5,fontStyle: FontStyle.italic,
                decorationStyle: TextDecorationStyle.solid),
            )),
          ),
          const SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100),
            child: TextButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Login()));
            }, child: Text('15'.tr, style: TextStyle(color: Colors.white,
            ),),
              style: ButtonStyle(//iconSize: MaterialStatePropertyAll<double>(200.0),
                  backgroundColor: MaterialStatePropertyAll<Color>(Colors.cyan)
              ),

            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100),
            child: TextButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CreatAccount()));
            }, child: Text('16'.tr,style: TextStyle(color: Colors.white),),
                style: ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Colors.red)
                )
            ),
          ),
          SizedBox(height: 20),
          Center(child: Text('17'.tr)),
          SizedBox(height: 20),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [

              IconButton(onPressed: (){}, icon:Icon (Icons.facebook),color: Colors.cyan,),
              IconButton(onPressed: (){}, icon:Icon (Icons.g_mobiledata),color: Colors.red,),
              IconButton(onPressed: (){}, icon:Icon (Icons.telegram,color: Colors.cyan,)),



            ],
          )


        ],
      ),
    );
  }
}