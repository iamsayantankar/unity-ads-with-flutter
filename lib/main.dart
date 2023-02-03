import 'package:flutter/material.dart';
import 'package:unity_ads_plugin/unity_ads_plugin.dart';
import 'package:unity_ads_with_flutter/home_page.dart';
import 'package:unity_ads_with_flutter/unityAds.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await UnityAds.init(
    gameId: AdHelper.addUnitId,
    onComplete: () => print('Initialization Complete'),
    onFailed: (error, message) =>
        print('Initialization Failed: $error $message'),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}