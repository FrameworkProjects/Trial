import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trial_apps/db/db_helper.dart';
import 'package:trial_apps/view/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  void initState() async {
    await DbHelper().getdatabase;
  }

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
