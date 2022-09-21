import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:signal_app/firebase_options.dart';
import 'package:signal_app/pages/registration/LoginPage.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Signal App',
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
    );
  }
}
