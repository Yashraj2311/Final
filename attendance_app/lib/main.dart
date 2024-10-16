import 'package:flutter/material.dart';
import 'package:attendance_app/screens/welcome_screen.dart';
import 'package:attendance_app/themes/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';



void main() {
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: lightMode,
      home: const WelcomeScreen(),
    );
  }
}
