import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'UI/dom_form.dart';
import 'UI/final_page.dart';
import 'UI/first_page.dart';

//Para Firebase
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      home: FistPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
