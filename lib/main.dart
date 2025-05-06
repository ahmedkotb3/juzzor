import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:juzzor/screens/lang.dart';
import 'package:juzzor/screens/splash.dart';
import 'package:juzzor/screens/third.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Force Landscape Mode
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft, // Left-side Landscape
    DeviceOrientation.landscapeRight, // Right-side Landscape
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English
        Locale('ar'), // Arabic
      ],
      title: 'Juzzor',
      theme: ThemeData(
        fontFamily: 'Sultan',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const Lang(),
    );
  }
}
