import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'bottomNavbar.dart';

import 'views/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterBlogApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: BottomNavBar(0),
    );
  }
}
