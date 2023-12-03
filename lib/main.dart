
import 'package:flutter/material.dart';
import 'package:flutter_application_3/AnaSayfa.dart';
import 'package:flutter_application_3/Routes/onGeneratedRoute.dart';
import 'package:flutter_application_3/data/appData.dart';


void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Strings.APP_NAME,
      theme: ThemeData(primaryColor: Colors.deepPurple,appBarTheme: const AppBarTheme(color: Colors.deepPurple)),
      onGenerateRoute: onGeneratedBurc.generatedRouter,
      home: const AnaSayfa(),
    );
  }


}

