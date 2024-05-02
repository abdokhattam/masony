import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profinal/screens/Create_Screen.dart';
import 'package:profinal/screens/Screen.dart';
import 'package:profinal/screens/Welcome_Screen.dart';

import 'package:supabase_flutter/supabase_flutter.dart';



class Wrapper extends StatefulWidget {
  const Wrapper({super.key});

  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  void initState() {
    super.initState();
    _redirect();
  }

  Future<void> _redirect() async {
    await Future.delayed(Duration.zero);
    if (!mounted) {
      return;
    }

    final session = Supabase.instance.client.auth.currentSession;
    if (session != null) {
      debugPrint(session.accessToken);
      debugPrint(Supabase.instance.client.auth.currentUser?.email);
      Get.offAll(() => const HomeScreen());
    } else {
      debugPrint('nothing');
      Get.offAll(() =>  Welcome());
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
