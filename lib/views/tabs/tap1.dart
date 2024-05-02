import 'package:flutter/material.dart';
class Tab1 extends StatelessWidget {
  Tab1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop();
        }, icon: Icon(Icons.settings_backup_restore_outlined)),
      ),
      body: Column(
        children: [

          SizedBox(height: 5,),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 50),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Enter the new Password',
                errorText: 'Error message',
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                suffixIcon: Icon(
                  Icons.error,
                ),
              ),
            ),
          ),
          SizedBox(height: 5,),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 50),
            child: TextFormField(
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                labelText: 'Confirm Password',
                errorText: 'Error message',
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                suffixIcon: Icon(
                  Icons.error,
                ),
              ),
            ),
          ),
          Center(child: TextButton(onPressed: (){},
            child: Text('save',style: TextStyle(color: Colors.black),),style:
            ButtonStyle(backgroundColor:MaterialStatePropertyAll<Color>(Colors.green)),))

        ],
      ),




    );
  }
}