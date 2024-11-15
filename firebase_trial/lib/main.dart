import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_trial/playerinfo.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyCdT21MZc2F9-rVZgBANngPzBXxN2phexU",
          appId: "1:366886050406:android:372a131d536d17bcceeba7",
          messagingSenderId: "366886050406",
          projectId: "fir-2trial"));
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner:false,
      home: PlayerInfo(),
    );
  }
}
