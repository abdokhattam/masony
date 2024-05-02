import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profinal/style-others/wrapper.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'Data/translate.dart';
import 'Data/translate2.dart';
import 'screens/Screen.dart';
import 'screens/Welcome_Screen.dart';
main()
async{
WidgetsFlutterBinding.ensureInitialized();
await Supabase.initialize(url: 'https://yucenazapebnflehpdkx.supabase.co', anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inl1Y2VuYXphcGVibmZsZWhwZGt4Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTMxMjY2ODIsImV4cCI6MjAyODcwMjY4Mn0.nX0Nf5NmfsThSHijGlWFtFJfJhJ68aSt32KJLM2gPm4',);
runApp( const ProFinal());
}
class ProFinal extends StatefulWidget {
  const ProFinal({super.key});

  @override
  State<ProFinal> createState() => _ProFinalState();
}

class _ProFinalState extends State<ProFinal> {
  @override
  Widget build(BuildContext context) {
    Get.put(LangController());
    return GetMaterialApp(
locale: Locale("ar"),
      translations: Translatee(),
      debugShowCheckedModeBanner: false,
      home: Wrapper(),
    );
  }
}



