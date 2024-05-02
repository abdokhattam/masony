import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter/material.dart';

class DBRepo extends GetxController{

  bool isLoading =false;

  final supabase = Supabase.instance.client;
List myUsers =[];
  List mySections =[];
  List myDoctors=[];

  TextEditingController fname = TextEditingController();

  TextEditingController phone = TextEditingController();

  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();

  TextEditingController confpass = TextEditingController();

  TextEditingController sectionName = TextEditingController();
  TextEditingController sectionDetails = TextEditingController();

  TextEditingController doctorName = TextEditingController();
  TextEditingController doctorPhone = TextEditingController();
  TextEditingController doctorTime = TextEditingController();






  Future insertDoctors()async{
    isLoading=true;
    try{
      await supabase.from('doctors').insert({
        'name':doctorName.text,
        'phone':doctorPhone.text,
        'time':doctorTime.text,
      }
      );
      isLoading=false;
      print('done');
    }
    catch(error){isLoading=false;
    throw Exception('insert doctors error is:    $error');
    }
  }
  Future getAllDoctors()async{
    try{
      var data=await supabase.from('doctors').select('*');
      myDoctors=data;
      print(data);
    }
    catch(e){throw Exception('get doctor error is :    $e');
    }
  }











  Future insertSection()async{
    try{
      await supabase.from('sections').insert({
        'name':sectionName.text,
        'details':sectionDetails.text
      });

      debugPrint('done');
    }
        catch(e){
      throw Exception('insert section error is: $e');
        }
  }

  Future uploadUser(status)async{
    isLoading=true;
    try{
      await supabase.from('users').insert({

        'name':fname.text,
        'email':email.text,
        'phone':phone.text,
        'password':password.text,
        'passconf':confpass.text,
        'status':status,

      });
      isLoading=false;

    }
    catch(error){
      isLoading=false;

      throw Exception("error :    $error");
    }

  }

 Future getAllUsers()async{
    try{

     var data = await supabase.from('users').select('*');
      myUsers =data;
      print(data);
    }catch(e){
      throw Exception('Get Users Error is : $e ');
    }

 }
  Future getAllSections()async{
    try{

      var data = await supabase.from('sections').select('*');
      mySections =data;
      print(data);
    }catch(e){
      throw Exception('Get Users Error is : $e ');
    }

  }

}