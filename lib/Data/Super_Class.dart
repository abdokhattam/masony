import 'package:profinal/screens/Welcome_Screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/Screen.dart';

class AuthRepo {
  final supabase = Supabase.instance.client.auth;
  bool isLoading = false;

  Future mySignUp(String email, String password) async {
    isLoading = true;
    debugPrint(email);
    try {
      await supabase.signUp(password: password, email: email);

      isLoading = false;
      Get.offAll(const HomeScreen());

      debugPrint('done');
      // Get.to(() => const HomeScreen());
    } catch (e) {
      isLoading = false;
      throw Exception(e);
    }
  }

  Future mySignOut() async {
    isLoading = true;

    try {
      await supabase.signOut();
      Get.offAll(()=>Welcome());
      isLoading = false;
    } catch (e) {
      isLoading = false;

      throw Exception(e);
    }
  }

  Future mySignIn(email, password) async {
    isLoading = true;

    try {
      await supabase.signInWithPassword(password: password, email: email);
      Get.offAll(const HomeScreen());

      isLoading = false;
    } catch (error) {
      isLoading = false;

      throw Exception(error);
    }
  }
}
