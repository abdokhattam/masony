import 'package:flutter/material.dart';
class One extends StatelessWidget {
  const One({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children: [SizedBox(height: 5,),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 50),
              child: TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: 'Enter the new Name',
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



          ]
      ),

    );
  }
}