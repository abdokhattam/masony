import 'package:flutter/material.dart';

import '../../style-others/Design.dart';
class SectionDetails extends StatefulWidget {
  Map user={};
  SectionDetails(this.user,{super.key});

  @override
  State<SectionDetails> createState() => _SectionDetailsState();
}

class _SectionDetailsState extends State<SectionDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
      appBar: AppBar(title: Text(widget.user['name']),
      ),
      body:
      Stack(
          children: [
          ClipPath(
          clipper: MyClipper(),
        child: Container(
          color: Colors.white,
        )),

      Container(
        child: Text(widget.user['details'].toString(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
      ),
    ]));
  }
}